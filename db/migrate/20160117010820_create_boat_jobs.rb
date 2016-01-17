class CreateBoatJobs < ActiveRecord::Migration
  def change
    create_table :boat_jobs do |t|
      t.integer :boat_id
      t.integer :job_id
      t.string :status
      t.text :issues
      t.references :job, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
