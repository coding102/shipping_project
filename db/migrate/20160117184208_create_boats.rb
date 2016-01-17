class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :boatName
      t.integer :containerCap
      t.string :location
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
