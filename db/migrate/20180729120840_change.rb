class Change < ActiveRecord::Migration
  def change
    rename_table :employment_details, :employments
    rename_table :personal_details, :personals
    rename_table :pfs, :providentfunds
  end

end
