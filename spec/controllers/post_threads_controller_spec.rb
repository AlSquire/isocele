require 'spec_helper'

describe PostThreadsController do
  let(:post_thread) { Factory.create(:post_thread, :category_id => category.id) }
  let(:category) { Category.first }

  describe "GET index" do
    before { get :index, :category_shortcut => category.shortcut }

    it { should assign_to(:category) }
    it { should assign_to(:post_threads) }
    it { should respond_with(:success) }
  end

  describe "GET show" do
    before { get :show, :category_shortcut => post_thread.category.shortcut, :id => post_thread.id }

    it { should assign_to(:category) }
    it { should assign_to(:post_thread) }
    it { should respond_with(:success) }
  end

  describe "POST create" do
    before { post :create, :category_shortcut => category.shortcut, :post => Factory.attributes_for(:post) }

    it { should assign_to(:category) }
    it { should assign_to(:post_thread) }
    it { should assign_to(:post) }
    it { assigns(:post_thread).should be_persisted }
    it { assigns(:post).should be_persisted }
    it { should respond_with(:redirect) }
    it { should redirect_to(:action => :show, :category_shortcut => category.shortcut, :id => assigns(:post_thread).id) }
    pending "unvalid record"
  end

  describe "POST update" do
    before { post :update, :category_shortcut => category.shortcut, :id => post_thread.id, :post => Factory.attributes_for(:post) }

    it { should assign_to(:category) }
    it { should assign_to(:post_thread) }
    it { should assign_to(:post) }
    it { assigns(:post).should be_persisted }
    it { should respond_with(:redirect) }
    it { should redirect_to(:action => :show, :category_shortcut => category.shortcut, :id => post_thread.id) }
    pending "unvalid record"
  end

end
