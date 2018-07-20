class Addcol < ActiveRecord::Migration
  def change

    add_column :addresses, :area, :string
  end

end
