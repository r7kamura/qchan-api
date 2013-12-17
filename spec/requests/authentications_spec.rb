require "spec_helper"

describe "Authentication resources" do
  describe "GET /auth/iframe" do
    it "returns HTML rendering iframe of /auth/message to take window.postMessage" do
      should == 200
    end
  end

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

    context "with valid condition" do
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
      stub_request(:post, Settings.oauth_exchange_url).to_return(body: "access_token=#{access_token}")
      stub_request(:get, Settings.github_user_url).to_return(
        body: {
          id: "1",
          email: "test@example.com",
          login: "test",
        }.to_json,
      )
    end

    let(:access_token) do
      "test_access_token"
    end

    context "without params[:code]" do
      before do
        params.delete(:code)
      end
      it { should == 400 }
    end

    context "with valid condition", :autodoc do
      it "finds or creates User from params[:state], then redirects by JavaScript" do
        should == 200
      end
    end
  end
end
