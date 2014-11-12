require "spec_helper"

describe Que::Web::Viewmodels::Job do
  let(:source_job) {
    {"priority"=>100, "run_at"=> Time.now,
     "job_id"=>555, "job_class"=>"SuccessJob",
     "args"=>["arg1", {"name"=>"foo", "age"=>10}],
     "error_count"=>0,
     "last_error"=>nil,
     "queue"=>"foo"
    }
  }
  let(:subject) { Que::Web::Viewmodels::Job.new(source_job) }

  it 'maps fields from source' do
    subject.priority.must_equal source_job["priority"]
    subject.queue.must_equal source_job["queue"]
  end
end
