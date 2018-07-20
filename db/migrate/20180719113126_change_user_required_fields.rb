class ChangeUserRequiredFields < ActiveRecord::Migration
  def change
    #remove_column :users, :emp_id
    add_column :users,:name,:string
    remove_column :users,:login_type
    #add_column :users, :login_type, :string, :default => "admin"
  end


end
