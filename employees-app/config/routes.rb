Rails.application.routes.draw do
 
  devise_for :users
 root 'persons#index'
 
 get '/' => 'persons#index'
 get '/employees' => 'persons#index'

 get '/employees/new' => 'persons#new'
 post '/employees' => 'persons#create'

 get '/employees/:id' => 'persons#show'

 get '/employees/:id/edit' => 'persons#edit'
 patch 'employees/:id' => 'persons#update'

 delete 'employees/:id' => 'persons#destroy'
end
