class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :description
      t.integer :story_id
      t.integer :bugarea_id
      t.timestamps
    end
  end
end
