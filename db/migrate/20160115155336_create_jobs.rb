class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :job_name
      t.string :cargo
      t.integer :containers_needed
      t.string :origin
      t.string :destination
      t.string :cost
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
