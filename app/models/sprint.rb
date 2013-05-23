class Sprint < ActiveRecord::Base
  attr_accessible :description, :team_id, :title, :completed, :start_date
  has_many :stories
  belongs_to :team
  
  
  def stories_completed_percentage
    if self.stories.count > 0
          (self.stories.where(:completed => 't').count.to_f / self.stories.count.to_f * 100).round()
    else
      0
    end
  end
  
  def stories_for_sprint_total_effort
    if self.stories.count > 0
      self.stories.sum(&:total_effort)
    else
      0
    end
  end
  
  def stories_for_sprint_total_effort_remaining
    if self.stories.count > 0
      self.stories.where(:completed => 'f').sum(&:total_effort)
    else
      0
    end
  end

end
