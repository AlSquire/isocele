class PostThread < ActiveRecord::Base
  belongs_to :category
  has_many :posts
  
  validates_presence_of :category
end
