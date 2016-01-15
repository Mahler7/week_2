Rails.application.routes.draw do
  get '/params_get_example' => 'pages#get_example'
  get 'url_example/:wildcard' => 'pages#url_example'
end
