MailRobber::Application.routes.draw do

  namespace :api, defaults: { format: :json } do
    post 'apps/create'
    post 'apps/destroy'
    get 'apps/:token', to: 'apps#show'

    post 'emails/create'
    post 'emails/destroy'
    get 'emails/:token', to: 'emails#index'
    get 'emails/:token/:email_id', to: 'emails#show'

    post 'feedbacks/create'
  end

end
