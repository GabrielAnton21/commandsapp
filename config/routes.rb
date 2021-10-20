Rails.application.routes.draw do
  #get 'home/index'
  get 'home/desprenoi'
  get 'home/desprenoi/misiuni'
  get 'home/desprenoi/regulamente'
  get 'home/desprenoi/consiliul'
  get 'home/desprenoi/inscriere'

  get 'home/donatii'
  get 'home/scoalaromana'

  get 'home/evenimente'

  get 'home/contact'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
