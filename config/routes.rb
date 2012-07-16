FundidoANegro::Application.routes.draw do
  namespace :backoffice do
    devise_for :users, :controllers => { :sessions => "backoffice/sessions" }
    resources :users, :except => [:show]
  end

  root :to => "home#index"
end
