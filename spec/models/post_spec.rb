require 'spec_helper'

describe Post do
  subject { @post = Factory(:post) }

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

  it { should belong_to(:post_thread) }

  describe "#create" do
    let(:post_thread) { Factory.create(:post_thread) }
    let(:category) { Factory.create(:category) }

    subject { @post = Factory.create(:post) }

    it { should be_valid }

    context "with a post_thread_id" do
      subject { @post = Factory.create(:post, :post_thread_id => post_thread.id) }

      it { should be_valid }
      its(:post_thread) { should == post_thread }
    end

    context "without a post_thread_id but with a category_id" do
      subject { @post = Factory.create(:post, :post_thread_id => nil, :category_id => category.id) }

      it { should be_valid }
      it { subject.post_thread.posts.should == [subject] }
      it { subject.post_thread.category.should == category }
    end

    context "without a post_thread_id nor a category_id" do
      subject { @post = Factory.build(:post, :post_thread_id => nil, :category_id => nil); @post.save; @post }

      it { should_not be_valid }
      its(:post_thread) { should_not be_persisted }
    end
  end

end
