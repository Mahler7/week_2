Rails.application.routes.draw do
 get '/' => 'persons#index'
 get '/employees' => 'persons#index'

 get '/employees/new' => 'persons#new'
 post '/employees' => 'persons#create'

 get '/employees/:id' => 'persons#show'
end
