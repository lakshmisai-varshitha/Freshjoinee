class ChangeLoginTypeFromUser < ActiveRecord::Migration
  def up
  change_column :users, :login_type, :string, default: "admin"


  end

  def down

  end



end
