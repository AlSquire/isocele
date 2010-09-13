require 'spec_helper'

describe PostThreadsController do
  # "Need a matching route?"

  describe "GET index" do
    it do
      get :index
      # assigns(:post_threads).should ???
      response.should be_success
    end
  end

  describe "GET show" do
    it do
      get :show
      response.should be_success
    end
  end

  describe "GET create" do
    it do
      get :create
      response.should redirect_to :action => :show
    end
  end

  describe "GET update" do
    it do
      get :update
      response.should redirect_to :action => :show
    end
  end

end
