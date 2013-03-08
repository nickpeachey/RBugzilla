class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :name
      t.string :description
      t.decimal :total_effort
      t.integer :sprint_id
      t.boolean :completed
      t.timestamps
    end
  end
end