require 'spec_helper'

describe "SprintCompletions" do
  it "sprint completion should be marked correctly" do
    @sprint = FactoryGirl.create(:sprint)
    @sprint.should be_valid
    @sprint.should be_an_instance_of(Sprint)
    @sprint.completed.should be_true

   end
   
   it "should have one story applied" do
     @story = FactoryGirl.create(:story)
     @sprint = @story.sprint
     @sprint.should be_valid
     @sprint.should be_an_instance_of(Sprint)
     @sprint.completed.should be_true
     @sprint.stories.count.should eq 1
     @sprint.stories_completed_percentage.should eq 100
   end
   
   it "should calculate the correct total for the sprint by the total of each story" do
     @story = FactoryGirl.create(:story)
     @sprint = @story.sprint
   end

end
