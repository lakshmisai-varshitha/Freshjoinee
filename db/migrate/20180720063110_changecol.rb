class Changecol < ActiveRecord::Migration
  def change
    rename_column :addresses, :type, :address_type
  end

end
