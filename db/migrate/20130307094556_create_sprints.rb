class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :title
      t.string :description
      t.integer :team_id
      t.timestamps
      t.boolean :completed
    end
  end
end
