class Team < ActiveRecord::Base
  attr_accessible :logo_url, :name
  has_many :sprints
  scope :currentwork, :include => :sprints, :conditions => [ "sprints.completed = 'f'" ]
end
