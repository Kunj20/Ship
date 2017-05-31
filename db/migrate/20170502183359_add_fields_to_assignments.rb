class AddFieldsToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_column :assignments, :boat_id, :integer
    add_column :assignments, :job_id, :integer
  end
end
