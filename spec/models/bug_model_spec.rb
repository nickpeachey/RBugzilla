require 'spec_helper'

describe "Bug Model Tests" do

  it "should create bug" do
    @bug = FactoryGirl.create(:bug)
    @bug.should_not eql(nil)
    @bug.title.should_not eql(nil)
    @bug.description.should_not eql(nil)
  end
end