class ZonesController < ApplicationController

  def create
    @zone = Zone.new(zones_params)

    if @zone.save
      redirect_to edit_store_path(@zone.store_id)
    else
      render stores_path
    end
  end

  def edit
    @zone = Zone.find(params[:id])
    @store = Store.find(params[:store_id])
    render "stores/edit_aisle"
  end

  def update
    @zone = Zone.find(params[:id])
    @zone.update(zones_params)
    if @zone.save
      flash[:notice] = "Aisle updated."
    else
      flash[:alert] = "Aisle not updated."
    end
    redirect_to edit_store_path(@zone.store_id)
  end

  def destroy
    zone = Zone.find(params[:id])
    store = Store.find(params[:store_id])
    store.zones.delete(zone)

    location = Location.where([
      "zone_id = ? and store_id = ?",
      "#{zone.id}",
      "#{store.id}"
      ])
    if location.any?
      location.destroy
    end
  end

  private

  def zones_params
    params.require(:zone).permit(:store_id, :aisle, :zone_id)
  end
end
