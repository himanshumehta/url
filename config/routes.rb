Rails.application.routes.draw do
  root to: 'urls#new'
  resources :urls
  get ':slug' => 'urls#bypass'
  get ':slug/stats' => 'urls#stats'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
