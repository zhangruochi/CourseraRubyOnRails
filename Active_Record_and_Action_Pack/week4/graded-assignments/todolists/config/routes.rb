Rails.application.routes.draw do
     
  root "todo_lists#index"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :todo_lists do
    resources :todo_items
  end

  get  '/login',   to: 'sessions#new'
  post '/login',   to: 'sessions#create'
  delete "/logout",to: "sessions#destroy"

end
