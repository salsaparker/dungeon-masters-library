class SessionsController < ApplicationController

  def new
  end #new endtag

  def create
    @admin = Admin.where(username: params[:username]).first
    if @admin.present? && @admin.authenticate(params[:password])
      session[:admin_id] = @admin.id
      redirect_to root_path
    else
      flash[:alert] = 'YOU SHALL NOT PASS!!!'
      render :new
    end #create if endtag
  end #create endtag

  def destroy
    session[:admin_id] = nil
    redirect_to root_path
  end #destroy endtag

end # SessionsController endtag