class Educationtypechange < ActiveRecord::Migration
  def change
    rename_column :educational_details, :type, :education_type
  end

end
