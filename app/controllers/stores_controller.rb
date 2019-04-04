class StoresController < ApplicationController
  def index
    @store = Store.new
    if params[:store_id]
      @zones = Store.find(params[:store_id].includes(:stores).zones)
    else
      @stores = Store.all
    end

  end

  def edit
    p "IN STORES EDIT ACTION"
    p "@store"
      p @store = Store.find(params[:id])
    p "@zone"
    p  @zone = Zone.new
    p "@zones"

    p  @zones = @store.zones
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      p "WooHoo store saved!"
    else
      p "Alert: STORE NOT SAVED"
    end
    redirect_back(fallback_location: items_path)
  end

  def update
    @store = Store.find(params[:id])
    @store.update(store_params)

    if @store.save
      flash[:notice] = "Store name saved."
    else
      flash[:alert] = "Store name not saved."
    end
    redirect_to edit_store_path(@store.id)
  end

  def destroy
    @store = Store.find(params[:id])
    @store.destroy
    redirect_to stores_path
  end


  private

  def store_params
    params.require(:store).permit(:name)
  end
end
