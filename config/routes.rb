Rails.application.routes.draw do
  get 'tasks/index'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  root 'boards#index'

  resources :boards do
    resources :lists
  end

  resources :lists do
    resources :tasks
  end
end


