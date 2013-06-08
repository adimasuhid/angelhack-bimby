AngelhackBimby::Application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  mount RailsAdmin::Engine => '/babyadmin', :as => 'rails_admin'

  resources :pages
  resources :babies do
    resources :photos
  end

  root :to => 'pages#landing'


end
