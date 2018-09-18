Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'foodstuffs#index'
  get 'foodstuffs', to: 'foodstuffs#index'

  get 'foodstuffs/add'
  post 'foodstuffs/add'

  get 'foodstuffs/:id', to: 'foodstuffs#show'

  get 'foodstuffs/edit/:id', to: 'foodstuffs#edit'
  patch 'foodstuffs/edit/:id', to: 'foodstuffs#edit'

  get 'foodstuffs/delete/:id', to: 'foodstuffs#delete'

  get 'foodstuffs/select'
  post 'foodstuffs/select'


end
