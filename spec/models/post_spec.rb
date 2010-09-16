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

  describe "creation" do
    it do
      @post = Factory.create(:post)
      @post.should be_valid
    end

    it " with a post_thread_id should belongs to a PostThread" do
      post_thread = Factory.create(:post_thread)
      post = Factory.create(:post, :post_thread_id => post_thread.id)
      post.should be_valid
      post.post_thread.should == post_thread
    end

    it "without a post_thread_id but with a category_id should create a new PostThread" do
      category = Factory.create(:category)
      post = Factory.create(:post, :post_thread_id => nil, :category_id => category.id)
      post.should be_valid
      post.post_thread.posts.count.should == 1
      post.post_thread.category.should == category
    end

    it "without a post_thread_id nor a category_id should not valid" do
      post = Factory.build(:post, :post_thread_id => nil, :category_id => nil)
      post.save
      post.should_not be_valid
      post.post_thread.should be_new_record
    end
  end

end
