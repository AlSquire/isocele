require 'spec_helper'

describe PostThreadsController do
  it do
    { :get => '/a' }.
    should route_to :controller => 'post_threads', :action => 'index', :category_shortcut => 'a'
  end

  it do
    { :post => '/a' }.
    should route_to :controller => 'post_threads', :action => 'create', :category_shortcut => 'a'
  end

  it do
    { :get => '/a/123' }.
    should route_to :controller => 'post_threads', :action => 'show', :category_shortcut => 'a', :id => '123'
  end

  it do
    { :post => '/a/123' }.
    should route_to :controller => 'post_threads', :action => 'update', :category_shortcut => 'a', :id => '123'
  end
end