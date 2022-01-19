Rails.application.routes.draw do
  resources :farmers
  resources :beans
  get '/regions/:id' => 'farmers#regions' 
  get '/farmers/edit/:id' => 'farmers#edit'
  get '/beans/edit/:id' => 'beans#edit'
end
