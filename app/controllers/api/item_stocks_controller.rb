module Api
  class ItemStocksController < ApplicationController
    def show
      @item = Item.find_by(sku: params[:sku])

      return render json: { item: nil } if @item.nil?

      respond_to do |format|
        format.json
      end
    end

    def update
      item = Item.find_by(sku: update_params[:sku])
      item.update!(stock: update_params[:stock])

      render status: :ok
    end

    private

    def show_params
      params.permit(:sku)
    end

    def update_params
      params.permit(:sku, :stock)
    end
  end
end
