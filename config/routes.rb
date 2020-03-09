Rails.application.routes.draw do
  devise_for :users
  root "post#index"
  post "income_values/new(/:name)" => "income_values#new"
  post "fixedcost_values/new(/:name)" => "fixedcost_values#new"
	post "variablecost_values/new(/:name)" => "variablecost_values#new"
  resources :incomes
  resources :fixedcosts
  resources :variablecosts
  resources :income_values
  resources :fixedcost_values
  resources :variablecost_values
end
