class Changetname < ActiveRecord::Migration
  def change
    add_column :addresses, :area, :string
  end

end
