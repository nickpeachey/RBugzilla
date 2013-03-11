class Bug < ActiveRecord::Base
  attr_accessible :description, :story_id, :title, :bugarea_id
  belongs_to :story
end
