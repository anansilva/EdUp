Rails.application.routes.draw do
  devise_for :publishers, path: 'publishers'
  devise_for :students, path: 'students'
  root to: 'pages#home'

  resources :publishers do
    resources :courses, only: [ :index, :new, :create] do
      resources :contents, only: [:index, :new, :create]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
