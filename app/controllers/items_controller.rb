class ItemsController < ApplicationController

  def index
    @item = Item.new
    @items = Item.all
  end

  def edit
    @item = Item.find(params[:id])
  end

  def create
    p "PARAMS"
    p params
    @item = Item.new(item_params[:item])
    @item.locations << Location.create(item_params[:location])
    if @item.save
      p "Woohoo! Item saved!"
    else
      p "ALERT: ITEM DID NOT SAVE"
    end
    redirect_to items_path
  end

  def update_name
    p params
    @item = Item.find(change_name_params[:id])
    @item.update({name: change_name_params[:name]})
    redirect_to items_path
  end

  def update_to_get

  end



  private

  def item_params
    {
      item: params.require(:item).permit(:name),
      location: params.require(:location).permit(:zone_id, :store_id)
    }
  end

  def change_name_params
    params.require(:item).permit(:name, :id)
  end

end
