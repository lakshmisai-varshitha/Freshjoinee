class AddUserIdToTables < ActiveRecord::Migration
  def change
    add_column :educational_details, :user_id, :integer
    add_column :employment_details, :user_id, :integer
    add_column :insurances, :user_id, :integer
    add_column :permissions, :user_id, :integer
    add_column :pfs, :user_id, :integer
  end
end
