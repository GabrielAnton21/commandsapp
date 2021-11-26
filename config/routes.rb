Rails.application.routes.draw do
  resources :services
  resources :school_bulletins
  resources :images
  resources :posts
  # get 'posts/index'
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/update'
  # get 'posts/destroy'
  devise_for :admins
  devise_scope :admin do
  get '/admins/sign_out' => 'devise/sessions#destroy'
  end
  # resources :members
  resources :members
  #get 'home/index'
  get 'home/desprenoi'
  get 'home/misiuni'
  get 'home/regulamente'
  get 'home/consiliul'
  get 'home/inscriere'
  get 'home/reservare'
  get 'home/sondaje'

  get 'home/donatii'
  get 'home/scoalaromana'

  get 'home/evenimente'

  get 'home/contact'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
