MailRobber::Application.routes.draw do

  namespace :api, defaults: { format: :json } do
    # resources :apps, only: [:create, :destroy]
    # resources :emails, only: [:create, :destroy]
    post 'apps/create'
    post 'apps/destroy'
    get 'apps/:token', to: 'apps#show'

    post 'emails/create'
    post 'emails/destroy'
    get 'emails/:token', to: 'emails#index'
    get 'emails/:token/:email_id', to: 'emails#show'
  end

  # get "emails/index"
  # get "emails/show"
  # get "apps/show"

end
