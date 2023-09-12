Rails.application.routes.draw do
  resources :blogs
  devise_for :users

  devise_scope :users do
    get '/users', to: redirect("/users/sign_up")
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'blogs#index'
end
