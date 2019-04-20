Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "produtos/new", to: "produtos#new"
  root to: "produtos#index"
end
