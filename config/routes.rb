Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get 'welcome/about', to: "welcome#about"
  get 'welcome/contact', to: "welcome#contact"
  get 'welcome/submit', to: "welcome#submit"
  get 'welcome/rewards', to: "welcome#rewards"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
