class CreateBugareas < ActiveRecord::Migration
  def change
    create_table :bugareas do |t|
      t.string :name
      t.timestamps
    end
  end
end
