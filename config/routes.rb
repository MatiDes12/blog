Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords"
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :demo_requests, only: [:new, :create]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root 'home#index'
  get 'dashboard', to: 'dashboard#index'
  get 'explore', to: 'explore#explore'
  get 'contact', to: 'contact#contact'
end
