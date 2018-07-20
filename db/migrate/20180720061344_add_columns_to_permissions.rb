class AddColumnsToPermissions < ActiveRecord::Migration
  def change
    add_column :permissions , :company_name, :string
    add_column :permissions, :empid, :integer
  end
end
