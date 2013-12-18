require "spec_helper"

describe "Job resource" do
  before do
    env["AUTHORIZATION"] = "Bearer: #{access_token.token}"
  end

  let(:access_token) do
    AccessToken.create(user_id: 1)
  end

  let(:id) do
    1
  end

  describe "GET /jobs" do
    it { should == 200 }
  end

  describe "GET /jobs/:id" do
    it { should == 200 }
  end

  describe "POST /jobs" do
    it { should == 201 }
  end

  describe "PUT /jobs/:id" do
    it { should == 204 }
  end

  describe "DELETE /jobs/:id" do
    it { should == 204 }
  end
end
