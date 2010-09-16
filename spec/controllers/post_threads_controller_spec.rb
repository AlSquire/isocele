require 'spec_helper'

describe PostThreadsController do
  # "Need a matching route?"

  describe "GET index" do
    it do
      get :index, :category_shortcut => 'c'
      # assigns(:post_threads).should ???
      response.should be_success
    end
  end

  describe "GET show" do
    it do
      get :show, :category_shortcut => 'c', :id => 'id'
      response.should be_success
    end
  end

  describe "POST create" do
    it do
      post :create, :category_shortcut => 'c', :id => 'id'
      response.should redirect_to :action => :show
    end
  end

  describe "PUT update" do
    it do
      put :update, :category_shortcut => 'c', :id => 'id'
      response.should redirect_to :action => :show
    end
  end

end
