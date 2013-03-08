class Bug < ActiveRecord::Base
  attr_accessible :description, :story_id, :title
  belongs_to :story
end
