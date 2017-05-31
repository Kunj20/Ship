class AddFieldsToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :first_name, :string
    add_column :employees, :last_name, :string
    add_column :employees, :bio, :string
  end
end
