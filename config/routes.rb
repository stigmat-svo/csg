Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :products

  get 'store/index'

  root to: 'store#index', as: 'store'

  post'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
end
