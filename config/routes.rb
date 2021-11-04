Rails.application.routes.draw do
  root 'application#landing'
  resources :data_logs, except: [:edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
