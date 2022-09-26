Rails.application.routes.draw do
  resources :gyms #create read update destroy show
  resources :clients
  resources :memberships
end
