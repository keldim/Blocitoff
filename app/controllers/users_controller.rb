class UsersController < ApplicationController
  def show
    @user = current_user
    @user.items = current_user.items
  end


end
