Rails.application.routes.draw do
  devise_for :users
  resources :campaigns
  get 'welcome/index'
    
    

authenticated :user do
  root :to => "campaigns#index"
end
    root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
