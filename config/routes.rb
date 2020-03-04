Rails.application.routes.draw do
  root "post#index"
  resources :incomes
  resources :fixedcosts
	resources :variablecosts
end
