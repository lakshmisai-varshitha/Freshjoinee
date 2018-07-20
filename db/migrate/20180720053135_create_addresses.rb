class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :comp_id
      t.string :emp_id
      t.integer :doorno
      t.string :street
      t.string :city
      t.string :district
      t.string :state
      t.string :pincode
      t.string :country
      t.string :type

      t.timestamps
    end
  end
end
