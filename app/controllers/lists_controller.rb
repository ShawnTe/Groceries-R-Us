class ListsController < ApplicationController

  def index
    @stores = Store.all
  end

  def show
    store_id = Store.find(params[:id]).id
    @items_for_list = List::build_list_for_store(store_id)
  end
end
