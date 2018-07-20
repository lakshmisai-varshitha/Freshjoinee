class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :comp_id
      t.string :emp_id
      t.string :relation_type
      t.string :name
      t.date :dob
      t.string :gender

      t.timestamps
    end
  end
end
