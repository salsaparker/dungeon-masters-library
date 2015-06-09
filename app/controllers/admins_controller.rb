class AdminsController < ApplicationController

  def new
    @admin = Admin.new
  end #new endtag

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      session[:admin_id] = @admin.id
      redirect_to root_path
    else
      render :new
    end
  end #create endtag

  private

  def admin_params
    params.require(:admin).permit(:username, :password, :email)
  end #admin endtag

end
