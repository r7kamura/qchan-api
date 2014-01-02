require "spec_helper"
require "securerandom"

describe "Authentication resources" do
  describe "GET /auth/authorize" do
    before do
      params[:redirect_to] = "http://example.com/callback"
    end

    context "without params[:redirect_to]" do
      before do
        params.delete(:redirect_to)
      end
      it { should == 400 }
    end

    context "with valid condition", :autodoc do
      let(:description) do
        <<-EOS
          Redirects to GitHub's authorization URL following the OAuth 2.0 Authorization Code Grant.
          We include client_id, scope, redirect_uri, and state as a URI query.
          The redirect_uri points to /auth/callback and this point will take authorization code to get access token.
          We also include params[:redirect_to] into the state query to let /auth/callback to redirect there
        EOS
      end

      it "redirects to OpenID Provider with query" do
        should == 302
        response.location.should include("https://github.com/login/authorize")
      end
    end
  end

  describe "GET /auth/callback" do
    before do
      params[:code] = "test_code"
      params[:state] = "test_prefix:::http://example.com/callback"
      stub_request(:post, Settings.github_exchange_url).to_return(body: "access_token=#{github_access_token}")
      stub_request(:get, Settings.github_user_url).to_return(
        body: {
          id: "1",
          email: "test@example.com",
          login: "test",
        }.to_json,
      )
    end

    let(:github_access_token) do
      SecureRandom.hex(32)
    end

    context "without params[:code]" do
      before do
        params.delete(:code)
      end
      it { should == 400 }
    end

    context "with existent user" do
      before do
        FactoryGirl.create(:user, token: github_access_token)
      end

      it "returns the existent user's information" do
        QchanApi::GithubClient::Diagnoser.should_not_receive(:diagnose)
        should == 200
      end
    end

    context "with valid condition", :autodoc do
      let(:description) do
        <<-EOS
          This API is a callback point from GitHub's OAuth 2.0 flow of the Authorization Code Grant.
          We try to exchange params[:code] to GitHub's access token, then finds if corresponding user exists.
          If not, we create a new user by requesting the user's information using the access token.
          Finally, we send user attributes and a newly-created Qchan's access token
          to the URL specified by params[:state].
          The params[:state] format must be like `<nonce>:::<redirect_uri>`
        EOS
      end

      it do
        should == 200
        user = User.first
        user.uid.should == 1
        user.name.should == "test"
        user.email.should == "test@example.com"
        user.token.should == github_access_token
        access_token = user.access_tokens.first
        access_token.scopes.should == "public"
        access_token.token =~ /\A[0-9a-z]{64}\z/
        access_token.refresh_token =~ /\A[0-9a-z]{64}\z/
        response.body.should include(access_token.token)
      end
    end
  end

  describe "POST /auth/exchange" do
    before do
      params[:access_token] = github_access_token
      stub_request(:get, Settings.github_user_url).to_return(
        body: {
          id: uid,
          email: email,
          login: name,
        }.to_json,
      )
    end

    let(:uid) do
      1
    end

    let(:email) do
      "test@example.com"
    end

    let(:name) do
      "test"
    end

    let(:github_access_token) do
      SecureRandom.hex(32)
    end

    context "without params[:access_token]" do
      before do
        params.delete(:access_token)
      end
      it { should == 400 }
    end

    context "with valid condition", :autodoc do
      specify "Given GitHub access token, then returns Qchan API's access token" do
        should == 201
        response.body.should be_json_as(
          token: /\A[0-9a-f]{64}\z/,
          uid: uid,
          email: email,
          name: name,
        )
      end
    end
  end
end
