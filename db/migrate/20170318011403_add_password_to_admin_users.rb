class AddPasswordToAdminUsers < ActiveRecord::Migration[5.0]
  def up
  	add_column "admin_users", "password", :string, :limit => 40
  end

  def down
  	remove_column "admin_users", "password"
  end

end
