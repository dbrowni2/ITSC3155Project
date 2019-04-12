Rails.application.routes.draw do
  get 'sessions/create'
  get 'sessions/destroy'
 

  get 'welcome/about', to: "welcome#about"
  get 'welcome/contact', to: "welcome#contact"
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy'
  
  resources :sessions, only: [:create, :destroy] 
  
  resources :users do
   resources :submissions
  end 
   get 'welcome/index'

    root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
