class PostThreadsController < ApplicationController
  def index
    @post_threads = Category.find(params[:category_id]).post_threads
  end
  
end
