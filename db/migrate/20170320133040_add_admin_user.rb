class AddAdminUser < ActiveRecord::Migration[5.0]
  def up
  	AdminUser.create(first_name: "admin", last_name: "admin", username: "admin", email: "admin@admin.com", password:"admin")
  end

  def down
  	AdminUser.find(:username=> "admin").delete
  end

end
