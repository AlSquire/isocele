require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # DEPRECATED
  # should have_instance_methods(:subject, :comment, :author_name, :author_password, :author_tripcode, :created_at, :category)
  should belong_to(:post_thread)
  should validate_presence_of(:post_thread)
  should validate_presence_of(:subject)
  should validate_presence_of(:comment)
  
  should "have two same tripcode with two same passwords" do
    post_1 = Post.new(:subject => "A tripcodefag post", :comment => "A comment", :author_password => "abcd")
    post_2 = Post.new(:subject => "Another tripcodefag post", :comment => "Another comment", :author_password => "abcd")
    assert_equal post_1.author_tripcode, post_2.author_tripcode
  end
  
  should "create" do
    thread = post_threads(:yotsuba)
    post = thread.posts.create(:subject => "Great manga", :comment => "Really love it")
    assert_valid post
  end
end
