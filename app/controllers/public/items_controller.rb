class Public::ItemsController < ApplicationController

  def index
   @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @cart = CartItem.new
  end

 private

 def item_params
   params.require(:item).permit(:genre_id, :name, :introduction, :price, :is_active)
 end
end
