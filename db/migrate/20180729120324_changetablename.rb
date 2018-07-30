class Changetablename < ActiveRecord::Migration
  def change
    rename_table :educational_details, :educationals
  end

end
