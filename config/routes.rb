Rails.application.routes.draw do
  root "pages#home"
    
  resources :wells do
    resources :tanks
  end
end
