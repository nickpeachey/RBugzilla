class Story < ActiveRecord::Base
  attr_accessible :description, :name, :sprint_id, :total_effort, :completed
  belongs_to :sprint
  has_many :bugs
end
