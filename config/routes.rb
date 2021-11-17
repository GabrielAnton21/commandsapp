Rails.application.routes.draw do
  resources :posts
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/update'
  # get 'posts/destroy'
  devise_for :admins
  resources :members
  #get 'home/index'
  get 'home/desprenoi'
  get 'home/misiuni'
  get 'home/regulamente'
  get 'home/consiliul'
  get 'home/inscriere'
  get 'home/reservare'

  get 'home/donatii'
  get 'home/scoalaromana'

  get 'home/evenimente'

  get 'home/contact'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
