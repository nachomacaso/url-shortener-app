Rails.application.routes.draw do
  get '/' => 'links#index'
  get '/links' => 'links#index'
  get '/links/new' => 'links#new'
  post '/links' => 'links#create'
  get '/links/:id' => 'links#show'
  get '/links/:id/edit' => 'links#edit'
  patch '/links/:id' => 'links#update'
  delete 'links/:id' => 'links#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/:slug' => 'visits#create'
end
