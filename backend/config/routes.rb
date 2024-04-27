Rails.application.routes.draw do
  get 'tasks/index'
  devise_for :users,controllers: {sessions: "users/sessions",
  registrations: "users/registrations"}

  resources :tasks, only: [:index, :create, :destroy] do
    member do
      patch :complete
    end
  end
end
