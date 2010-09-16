class Post < ActiveRecord::Base
  attr_accessor :category_id

  belongs_to :post_thread

  validates_associated :post_thread
  validates_presence_of :post_thread

  before_validation :on => :create, :if => :first_of_the_thread? do
    build_post_thread(:category_id => category_id)
  end

  def first_of_the_thread?
    if new_record?
      post_thread.nil?
    else
      post_thread.posts.first == self
    end
  end
end
