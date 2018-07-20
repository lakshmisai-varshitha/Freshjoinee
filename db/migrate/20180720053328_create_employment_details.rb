class CreateEmploymentDetails < ActiveRecord::Migration
  def change
    create_table :employment_details do |t|
      t.string :comp_id
      t.string :emp_id
      t.string :comp_name
      t.date :from_date
      t.date :to_date
      t.string :designation
      t.string :experience

      t.timestamps
    end
  end
end
