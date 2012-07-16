FundidoANegro::Application.routes.draw do
  devise_for :users

  resources :users, :except => [:show]
end
