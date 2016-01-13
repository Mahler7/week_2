Rails.application.routes.draw do
  get '/fortune' => 'pages#my_future'
  get '/lotto' => 'pages#lucky_numbers'
  get '/beer' => 'pages#bottles'
  get '/count' => 'pages#page_counter'
end