Rails.application.routes.draw do
  get '/' => 'numbers#name'
  get '/guessing' => 'numbers#guessing'
  get '/url_example/:wildcard' => 'numbers#url_example'
  get '/retrieve_form' => 'numbers#get_form'
  post '/submit_form' => 'numbers#submit_form' #post is http verb in error message for retrieve form, needs post
  get 'numbers_form' => 'numbers#numbers_form'
  post 'numbers_submit' => 'numbers#numbers_submit'
end
