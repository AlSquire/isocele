require 'spec_helper'

describe Post do
  before do
    @post = Factory(:post)
  end

  subject { @post }

  it { should respond_to(:subject) }
  its(:subject) { should be_a(String) }

  it { should respond_to(:content) }
  its(:content) { should be_a(String) }

  it { should respond_to(:author_name) }
  its(:author_name) { should be_a(String) }

  it { should respond_to(:author_tripcode) }
  its(:author_tripcode) { should be_a(String) }

  it { should respond_to(:created_at) }
  its(:created_at) { should be_a(Time) }

  it { should respond_to(:post_thread) }
end
