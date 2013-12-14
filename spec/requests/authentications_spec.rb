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
    it "takes authorization code from OpenID Provider, then redirects to URL provided by params[:state]" do
      should == 302
    end
  end
end
