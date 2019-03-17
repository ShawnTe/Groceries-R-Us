class List

  def self.build_list_for_store(store_id)

    get_locations_by_store = Location
      .where(store_id: store_id)
      .order(:zone_id)

    @items_for_list = {}

    get_locations_by_store.each do |location|
      item = Item.find(location.item_id)

      if item.to_get == true
        aisle = Zone.find(location.zone_id).aisle

        @items_for_list[aisle] = [] if !@items_for_list.has_key?(aisle)
        @items_for_list[aisle] << item
      end
    end
    @items_for_list
  end
end
