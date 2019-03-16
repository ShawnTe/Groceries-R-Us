class LocationsController < ApplicationController

  def destroy
    location = Location.find(params["id"])
    item = location.item_id
    location.destroy
    redirect_to edit_item_path(item)
  end

  private

end
