Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'team#index'
  get '/team', to: 'team#index'
  get '/enemy', to: 'team#enemy'
end
