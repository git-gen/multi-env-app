module Api
  class SearchOrdersController < ApplicationController
    def show
      @orders = Order.all
      @orders = @orders.where(created_at: show_params[:ordered_start]..show_params[:ordered_end])

      respond_to do |format|
        format.json
      end
    end

    private

    def show_params
      params.permit(:ordered_start, :ordered_end)
    end
  end
end
