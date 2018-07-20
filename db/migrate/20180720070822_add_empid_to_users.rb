class AddEmpidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :empid, :integer
  end
end
