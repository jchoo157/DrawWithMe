Rails.application.routes.draw do
  resources :drawings

  get 'users/index'

  get 'users/show'

  root 'static_pages#index'

  get 'static_pages/about'

  get 'static_pages/contact'

  devise_for :users, :controllers => { devise: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
