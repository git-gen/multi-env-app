Rails.application.routes.draw do
  resource :shopping, onyl: %i(show create)
  resources :orders
  resources :items

  namespace :api do
    resource :item_stock, only: %i(show create)
    resource :search_order, only: %i(show)
  end
end
