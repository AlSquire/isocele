require 'spec_helper'

describe Category do
  before do
    @category = Factory(:category)
  end

  subject { @category }

  it { should respond_to(:name) }
  its(:name) { should be_a(String) }

  it { should respond_to(:shortcut) }
  its(:shortcut) { should be_a(String) }

  it { should respond_to(:post_threads) }
end
