json.extract! item, :id, :title, :sku, :price, :stock, :enabled, :created_at, :updated_at
json.url item_url(item, format: :json)
