FundidoANegro::Application.routes.draw do
  devise_for :users, :controllers => { :sessions => "backoffice/sessions" }, :path_prefix => "/backoffice"
  namespace :backoffice do
    resources :users, :except => [:show]
    resources :documents, :only => [:index, :destroy]
    resources :articles, :except => [:index, :show, :destroy]
    resources :reviews, :except => [:index, :show, :destroy]
  end

  resources :articles, :only => [:show]

  root :to => "home#index"
end
