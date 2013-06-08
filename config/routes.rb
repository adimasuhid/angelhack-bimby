AngelhackBimby::Application.routes.draw do
  devise_for :users

  mount RailsAdmin::Engine => '/babyadmin', :as => 'rails_admin'

  resources :pages

  root :to => 'pages#landing'

  resources :babies

end
