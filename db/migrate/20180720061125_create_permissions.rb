class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.boolean  :personal_details
      t.boolean  :finance_details
      t.boolean  :insurance_details
      t.boolean  :education_details
      t.boolean  :employment_details

      t.timestamps
    end
  end
end
