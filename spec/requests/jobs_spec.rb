require "spec_helper"

describe "Job resource" do
  before do
    env["ACCEPT"] = nil
    env["AUTHORIZATION"] = "Bearer: #{access_token.token}"
  end

  let(:access_token) do
    AccessToken.create(user_id: 1)
  end

  let(:id) do
    1
  end

  let(:job) do
    FactoryGirl.create(:job)
  end

  describe "GET /jobs" do
    before do
      job
    end

    it "returns all jobs in the database", :autodoc do
      should == 200
      response.body.should be_json_as(
        [
          id: job.id,
          user_id: job.user_id,
          name: job.name,
          command: job.command,
          builds_count: 0,
          successes_count: 0,
          failures_count: 0,
          schedule: nil,
          created_at: String,
          updated_at: String,
        ],
      )
    end
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
