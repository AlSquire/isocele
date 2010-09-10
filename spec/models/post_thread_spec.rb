require 'spec_helper'

describe PostThread do
  before do
    @post_thread = Factory(:post_thread)
  end

  subject { @post_thread }

  it { should respond_to(:category) }

  it { should respond_to(:posts) }
end
