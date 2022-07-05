json.orders @orders do |order|
  json.id order.id
  json.created_at order.created_at
  json.updated_at order.updated_at
  json.order_items order.order_items do |order_item|
    json.id order_item.id
    json.title order_item.title
    json.sku order_item.sku
    json.price order_item.price
    json.count order_item.count
    json.created_at order_item.created_at
    json.updated_at order_item.updated_at
  end
end
