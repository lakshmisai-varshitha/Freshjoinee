class AddUserIdToPersonalDetails < ActiveRecord::Migration
  def change
    add_column :personal_details, :user_id, :integer

  end
end
