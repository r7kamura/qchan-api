require "spec_helper"

describe "Job resource" do
  before do
    env["ACCEPT"] = nil
    env["AUTHORIZATION"] = "Bearer #{access_token.token}"
    env["CONTENT_TYPE"] = "application/json"
  end

  let(:access_token) do
    AccessToken.create(user_id: 1)
  end

  let(:id) do
    job.id
  end

  let(:job) do
    FactoryGirl.create(:job)
  end

  shared_examples_for "returns 404 with non existent ID" do
    context "with non existent record ID" do
      let(:id) do
        0
      end
      it { should == 404 }
    end
  end

  shared_examples_for "returns 400 with invalid params" do
    context "with invalid params" do
      before do
        params[:name] = ["invalid params"]
      end
      it { should == 400 }
    end
  end

  describe "GET /jobs" do
    before do
      job
    end

    context "with invalid access token" do
      before do
        env["AUTHORIZATION"] = "invalid"
      end
      it { should == 401 }
    end

    context "with valid condition" do
      it "returns all jobs in the database", :autodoc do
        should == 200
        response.body.should be_json_as(
          [
            id: job.id,
            user_id: job.user_id,
            name: job.name,
            command: job.command,
            successes_count: 0,
            failures_count: 0,
            schedule: nil,
            created_at: String,
            updated_at: String,
          ],
        )
      end
    end
  end

  describe "GET /jobs/:id" do
    include_examples "returns 404 with non existent ID"

    context "with valid condition", :autodoc do
      it "returns the job specified by :id" do
        should == 200
        response.body.should be_json_as(Hash)
      end
    end
  end

  describe "POST /jobs" do
    before do
      params[:name] = "name"
      params[:command] = "ls"
    end

    include_examples "returns 400 with invalid params"

    context "without required params" do
      before do
        params.delete(:name)
      end

      it { should == 400 }
    end

    context "with valid condition", :autodoc do
      it "creates a new job and returns it" do
        should == 201
        response.body.should be_json_as(Hash)
        job = Job.first
        job.name.should == params[:name]
        job.command.should == params[:command]
        job.user_id.should == access_token.user_id
      end
    end
  end

  describe "PUT /jobs/:id" do
    before do
      params[:name] = "updated"
    end

    include_examples "returns 400 with invalid params"

    context "with valid condition", :autodoc do
      it "merges given attributes into the job" do
        should == 204
        job.reload
        job.name.should == params[:name]
        job.schedule.should == nil
      end
    end
  end

  describe "DELETE /jobs/:id" do
    include_examples "returns 404 with non existent ID"

    context "with valid condition", :autodoc do
      it "deletes the job & associated records specified by :id" do
        should == 204
        job.class.where(id: id).should_not be_exist
      end
    end
  end
end
