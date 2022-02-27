Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/dishes/:id', to: 'dishes#show'

  get '/chefs/:id', to: 'chefs#show'

  scope :chefs do
    get "/:chef_id/ingredients", to: 'ingredients#index'
  end
end
