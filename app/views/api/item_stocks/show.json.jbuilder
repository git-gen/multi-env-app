json.item do
  json.id @item.id
  json.title @item.title
  json.sku @item.sku
  json.price @item.price
  json.stock @item.stock
  json.enabled @item.enabled
  json.created_at @item.created_at
  json.updated_at @item.updated_at
end
