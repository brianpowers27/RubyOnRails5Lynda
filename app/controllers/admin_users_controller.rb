class AdminUsersController < ApplicationController

  layout 'admin'

  before_action :confirm_logged_in

  def index
    @AdminUsers = AdminUser.sorted
  end

  def new
    @AdminUser = AdminUser.new

  end

  def create
    @AdminUser = AdminUser.create(admin_user_params)
    if @AdminUser.save
      flash[:notice] = "AdminUser created successfully."
      redirect_to(admin_users_path)
    else      
      render('new')
    end
  end

  def edit
    @admin_user = AdminUser.find(params[:id])
  end

  def update
    @admin_user = AdminUser.find(params[:id])
    if @amin_user.update_attributes(admin_user_params)
      flash[:notice] = "AdminUser edited successfully."
      redirect_to(admin_users_path)
    else      
      render('edit')
    end
  end

  def delete
    @admin_user = AdminUser.find(params[:id])
  end

  def destroy
    @admin_user = AdminUser.find(params[:id])
    @admin_user.destroy
    flash[:notice] = "Admin user destroyed successfully."
    redirect_to(admin_users_path)
  end

  private

  def admin_user_params
    # Permit :password, but NOT :password_digest
    params.require(:admin_user).permit(
      :first_name,
      :last_name,
      :email,
      :username,
      :password
    )
  end

end
