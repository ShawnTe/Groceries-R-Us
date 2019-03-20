class ZonesController < ApplicationController

  def create
    @zone = Zone.new(zones_params)

    if @zone.save
      redirect_to edit_store_path(@zone.store_id)
    else
      render stores_path
    end
  end

  def destroy
    p "IN DESTORY IN ZONES ********Left off here compelte destroy action"
    p params
  end
  private

  def zones_params
    params.require(:zone).permit(:store_id, :aisle)
  end
end
