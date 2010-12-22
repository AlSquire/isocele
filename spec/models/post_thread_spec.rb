require 'spec_helper'

describe PostThread do
  before do
    @post_thread = Factory(:post_thread)
  end

  subject { @post_thread }

  it { should belong_to(:category) }

  it { should have_many(:posts) }
end
