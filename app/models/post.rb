class Post < ActiveRecord::Base
  belongs_to :post_thread
end
