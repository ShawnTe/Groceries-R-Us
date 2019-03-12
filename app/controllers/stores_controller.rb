class StoresController < ApplicationController
  def index
    @store = Store.new
    @stores = Store.all
  end

  # def show
  # end

  def edit
      @store = Store.find(params[:id])
  end

  def create
    @store = Store.new(store_params)

    if @store.save
      p "WooHoo store saved!"
    else
      p "Alert: STORE NOT SAVED"
    end
    redirect_to stores_path
  end

  def update
    @store = Store.find(params[:id])
    @store.update(store_params)

    if @store.save
      p "WooHoo store saved!"
    else
      p "Alert: STORE NOT SAVED"
    end
    redirect_to stores_path
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
