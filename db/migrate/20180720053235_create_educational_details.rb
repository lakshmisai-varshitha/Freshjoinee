class CreateEducationalDetails < ActiveRecord::Migration
  def change
    create_table :educational_details do |t|
      t.string :comp_id
      t.string :emp_id
      t.string :type
      t.string :institution
      t.string :stream
      t.string :percentage
      t.string :location
      t.string :year_completion

      t.timestamps
    end
  end
end
