Rails.application.routes.draw do
  resources :octo_items
  resources :items
  resources :octopi
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
