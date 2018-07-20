class AddDepartmentToPermissions < ActiveRecord::Migration
  def change
    add_column :permissions, :department, :string
  end
end
