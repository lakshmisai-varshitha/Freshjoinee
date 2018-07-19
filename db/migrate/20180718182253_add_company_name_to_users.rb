class AddCompanyNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company_name, :string
    add_column :users, :emp_id, :string
    add_column :users, :login_type, :string
  end
end
