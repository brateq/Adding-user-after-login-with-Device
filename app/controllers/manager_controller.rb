class ManagerController < ApplicationController
  skip_before_filter :require_no_authentication
  before_filter :authenticate_user!

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.create
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render action: 'new' }
      end
    end
  end
end
