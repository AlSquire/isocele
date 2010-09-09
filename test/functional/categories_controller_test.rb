require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  # Replace this with your real tests.
  
  context "on GET to :show" do
    setup { get :show, :id => categories(:anime).id }

    should assign_to(:category)
  end
end
