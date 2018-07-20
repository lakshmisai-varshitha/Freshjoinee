class CreatePfs < ActiveRecord::Migration
  def change
    create_table :pfs do |t|
      t.string :comp_id
      t.string :emp_id
      t.string :aadhar
      t.string :pan
      t.string :acc_number
      t.string :ifsc
      t.string :bank_name

      t.timestamps
    end
  end
end
