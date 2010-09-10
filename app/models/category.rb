class Category < ActiveRecord::Base
  has_many :post_threads
end
