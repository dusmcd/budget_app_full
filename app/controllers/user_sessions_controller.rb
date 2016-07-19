class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if @user = login(params[:email], params[:password])
      redirect_to categories_path
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end
  
  def show
    render action: 'destroy'
  end

  def destroy
    logout
    redirect_to(root_path, notice: 'Logged out!')
  end
end

