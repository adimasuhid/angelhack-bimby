AngelhackBimby::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  mount RailsAdmin::Engine => '/babyadmin', :as => 'rails_admin'

  resources :pages
  resources :babies do
    resources :photos
    member do
      get :growth
    end
  end

  root :to => 'pages#landing'

  authenticated :user do
    root :to => 'babies#index'
  end


end
