Rails.application.routes.draw do

  get 'home/new'

  get 'home/create'

  get 'home/update'

  get 'home/edit'

  get 'home/destroy'

  get 'home/index'

  get 'home/show'

  resources :users, :path => '/'

end
