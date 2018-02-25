Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'ajax#index'
  get '/upanel' => 'ajax#upanel'
  get '/search' => 'ajax#search'
  post '/result' => 'ajax#result'
end
