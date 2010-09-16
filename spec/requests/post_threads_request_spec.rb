require 'spec_helper'

describe "Requested " do
  describe "/" do
    before do
      get "/"
    end

    it { response.should be_success }
  end

  describe "/c/" do
    before do
      Factory(:post_thread)
      get "/c/"
    end

    it { response.should be_success }
    it { request.method.should == "GET" }
    it { controller.should be_a_kind_of PostThreadsController } # Plutôt routing spec
  end
end
