class ItemsController < ApplicationController
  def create
    @item = Item.new
    @item.name = params[:item][:name]
    @item.user = current_user

    if @item.save
      flash[:notice] = "Item was saved."
      redirect_to user_path(current_user)
    else
      flash.now[:alert] = "There was an error saving the item. Please try again."
      redirect_to user_path(current_user)
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
  end

  respond_to do |format|
        format.html
        format.js
      end

end
