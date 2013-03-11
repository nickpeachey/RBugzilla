require 'spec_helper'

describe ErrorController do

  describe "GET '404'" do
    it "returns http success" do
      get '404'
      response.should be_success
    end
  end

  describe "GET 'general'" do
    it "returns http success" do
      get 'general'
      response.should be_success
    end
  end

end
