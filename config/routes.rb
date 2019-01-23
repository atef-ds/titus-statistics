Rails.application.routes.draw do
  resources :expense_claimers
  root to: 'expense_claimers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
