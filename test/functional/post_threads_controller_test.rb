require 'test_helper'

class PostThreadsControllerTest < ActionController::TestCase

  context "on GET to :index" do
    setup { get :index, :category_id => categories(:anime).id }

    should assign_to(:post_threads)
  end

  context "on GET to :show" do
    setup { get :show, :id => post_threads(:yotsuba).id }

    should_eventually assign_to(:post_thread)
  end
end
