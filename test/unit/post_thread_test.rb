require 'test_helper'

class PostThreadTest < ActiveSupport::TestCase
  should belong_to(:category)
  should have_many(:posts)
  
  should validate_presence_of(:category)
end
