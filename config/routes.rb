FundidoANegro::Application.routes.draw do
  namespace :backoffice do
    devise_for :users

    resources :users, :except => [:show]
  end
end
