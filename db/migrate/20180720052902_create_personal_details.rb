class CreatePersonalDetails < ActiveRecord::Migration
  def change
    create_table :personal_details do |t|
      t.string :comp_id
      t.string :emp_id
      t.string :name
      t.string :email
      t.string :gender
      t.date :dob
      t.string :contact

      t.timestamps
    end
  end
end
