FundidoANegro::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "backoffice/sessions" }, :path_prefix => "/backoffice"
  namespace :backoffice do
    resources :users, :except => [:show]
    resources :articles, :except => [:show]
    resources :reviews, :except => [:show]
  end

  resources :articles, :only => [:index, :show]
  resources :reviews, :only => [:index, :show]

  root :to => "home#index"
end
