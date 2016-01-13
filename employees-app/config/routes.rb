Rails.application.routes.draw do
 get '/cat' => 'persons#cat'
 get '/all' => 'persons#cats'
end
