require 'spec_helper'

describe AnalysisController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'comparison'" do
    it "should be successful" do
      get 'comparison'
      response.should be_success
    end
  end

end
