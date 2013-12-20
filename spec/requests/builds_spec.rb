require "spec_helper"

describe "Build resource" do
  before do
    env["ACCEPT"] = nil
    env["AUTHORIZATION"] = "Bearer: #{access_token.token}"
    env["CONTENT_TYPE"] = "application/json"
  end

  let(:access_token) do
    AccessToken.create(user_id: 1)
  end

  let(:job) do
    build.job
  end

  let(:job_id) do
    job.id
  end

  let(:build) do
    FactoryGirl.create(:build)
  end

  describe "GET /jobs/:job_id/builds" do
    before do
      build
    end

    it "returns all builds of the job specified by :job_id", :autodoc do
      should == 200
      response.body.should be_json_as(
        [
          id: build.id,
          job_id: build.job.id,
          exit_status: 0,
          number: 1,
          output: nil,
          started_at: nil,
          finished_at: nil,
          created_at: String,
          updated_at: String,
        ],
      )
    end
  end
end
