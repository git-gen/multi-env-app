module Api
  class ItemStocksController < ApplicationController
    skip_forgery_protection

    def show
      @item = Item.find_by(sku: params[:sku])

      return render json: { item: nil } if @item.nil?

      respond_to do |format|
        format.json
      end
    end

    def create
      item = Item.find_by(sku: create_params[:sku])
      item.update!(stock: create_params[:stock])

      respond_to do |format|
        format.json { render json: { result: 'success' }, status: :ok }
      end
    end

    private

    def show_params
      params.permit(:sku)
    end

    def create_params
      params.permit(:sku, :stock)
    end
  end
end
