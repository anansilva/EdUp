Rails.application.routes.draw do
  devise_for :publishers, path: 'publishers', controllers: { sessions: "publishers/sessions" }
  devise_for :students, path: 'students', controllers: { sessions: "students/sessions" }
  root to: 'courses#index'

  resources :courses, only: [ :new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
