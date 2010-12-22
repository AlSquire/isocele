class PostThreadsController < ApplicationController
  def index
    @category = Category.find_by_shortcut(params[:category_shortcut])
    @post_threads = @category.post_threads
  end

  def show
    @category = Category.find_by_shortcut(params[:category_shortcut])
    @post_thread = @category.post_threads.find(params[:id])
  end

  def create
    @category = Category.find_by_shortcut(params[:category_shortcut])
    @post = Post.create(params[:post].merge(:category_id => @category.id))
    @post_thread = @post.post_thread
    redirect_to :action => :show, :category_shortcut => @category.shortcut, :id => @post_thread.id
  end

  def update
    @category = Category.find_by_shortcut(params[:category_shortcut])
    @post_thread = @category.post_threads.find(params[:id])
    @post = @post_thread.posts.create(params[:post])
    redirect_to :action => :show, :category_shortcut => @category.shortcut, :id => @post_thread.id
  end
end
