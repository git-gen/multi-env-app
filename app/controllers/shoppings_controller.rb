class ShoppingsController < ApplicationController
  def show
    @items = Item.where(enabled: true)
  end

  def create
    order_datas = create_params[:items].select { |item| item['count'].to_i > 0 }
    order = Order.new
    ApplicationRecord.transaction do
      # orderレコード作成
      order.save!

      order_datas.each do |order_data|
        item = Item.find(order_data['id'])

        # アイテム在庫数の減少
        item.update!(stock: item.stock - order_data['count'].to_i)

        # order商品レコード作成
        order.order_items.create!(
          title: item.title,
          sku: item.sku,
          price: item.price,
          count: order_data['count'].to_i
        )
      end
    end

    redirect_to shopping_path
  end

  private

  def create_params
    params.permit(items: ['id', 'count'])
  end
end
