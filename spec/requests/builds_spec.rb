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

  let(:id) do
    build.id
  end

  shared_examples_for "returns 404 with non existent job ID" do
    context "with non existent job ID" do
      let(:job_id) do
        0
      end
      it { should == 404 }
    end
  end

  shared_examples_for "returns 404 with non existent ID" do
    context "with non existend ID" do
      let(:id) do
        0
      end
      it { should == 404 }
    end
  end

  describe "GET /jobs/:job_id/builds" do
    before do
      build
    end

    include_examples "returns 404 with non existent job ID"

    context "with valid condition" do
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

  describe "GET /builds/:id" do
    include_examples "returns 404 with non existent ID"

    context "with valid condition", :autodoc do
      it "returns the build" do
        should == 200
        response.body.should be_json_including(id: id)
      end
    end
  end

  describe "POST /jobs/:job_id/builds" do
    include_examples "returns 404 with non existent job ID"

    context "with valid condition", :autodoc do
      it "creates a new builds and enqueues it" do
        should == 201
        response.body.should be_json_including(job_id: job_id)
        Resque.redis.llen("queue:builds").should == 1
        Resque.redis.lrange("queue:builds", 0, -1)[0].should be_json_as(class: "Build", args: [job.command])
      end
    end
  end

  describe "PUT /builds/:id" do
    before do
      params[:exit_status] = 0
      params[:output] = "Hello world"
      params[:started_at] = Time.new(2000, 1, 1).iso8601
      params[:finished_at] = Time.new(2000, 1, 2).iso8601
    end

    include_examples "returns 404 with non existent ID"

    context "with invalid time format" do
      before do
        params[:started_at] = Time.new(2000, 1, 1).rfc2822
      end
      it { should == 400 }
    end

    context "with valid condition", :autodoc do
      it "updates the build" do
        should == 204
        build.reload
        build.exit_status.should == params[:exit_status]
        build.output.should == params[:output]
        build.started_at.should == Time.new(2000, 1, 1)
        build.finished_at.should == Time.new(2000, 1, 2)
      end
    end
  end
end
