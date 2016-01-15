class ChangeDataTypeForCostColumnInJobsTable < ActiveRecord::Migration
  def change
      change_table :jobs do |t|
          t.change :cost, :decimal
      end
    end
end
