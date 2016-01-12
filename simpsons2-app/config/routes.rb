Rails.application.routes.draw do
 get '/simpsons' => 'pages#simpsons'
 get '/homer' => 'pages#homer'
 get '/maggie' => 'pages#maggie'
end
