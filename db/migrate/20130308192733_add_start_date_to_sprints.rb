class AddStartDateToSprints < ActiveRecord::Migration
  def change
    add_column :sprints, :start_date, :datetime
  end
end
