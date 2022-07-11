module Api
  class SearchOrdersController < ApplicationController
    skip_forgery_protection

    def show
      now = Time.current
      @orders = Order
        .where(created_at: now.ago(5.minutes)...now)
        .order(created_at: :desc)

      respond_to do |format|
        format.json
      end
    end
  end
end
