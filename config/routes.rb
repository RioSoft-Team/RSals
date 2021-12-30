Rails.application.routes.draw do
  root "wells#index"
  
  resources :wells
end
