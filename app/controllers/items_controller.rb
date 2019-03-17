class ItemsController < ApplicationController

  def index
    @item = Item.new
    @items = Item.all
  end

  def edit
    @item = Item.find(params[:id])
    @locations = @item.locations

    @location_details = []

    @locations.each do |location|
      @location_details << {
        :id => location.id,
        :store => Store.find(location.store_id).name,
        :aisle => Zone.find(location.zone_id).aisle
      }
    end
  end

  def create
    @item = Item.new(name: item_params[:name])
    if @item.save
      p "Woohoo! Item saved!"
    else
      p "ALERT: ITEM DID NOT SAVE"
    end
    redirect_to items_path
  end

  def update_name
    @item = Item.find(change_name_params[:id])
    @item.update({name: change_name_params[:name]})
    redirect_to items_path
  end

  def update_to_get
    item = Item.find(params[:format])
    item.update(to_get: !item.to_get)
  end

  def update_location
    item = Item.find(update_params[:item][:id])

    item.locations << Location.create(
      store_id: update_params[:location][:store_id],
      zone_id: update_params[:location][:zone_id]
    )

    redirect_to edit_item_path(item)
  end

  private

  def item_params
    params.require(:item).permit(:name)
  end

  def update_params
    {
      item: params.require(:item).permit(:id),
      location: params.require(:location).permit(:zone_id, :store_id)
    }
  end

  def change_name_params
    params.require(:item).permit(:name, :id)
  end

end
