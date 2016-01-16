Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'users'

  # namespace :api do 
  #   namespace :v1 do
      resources :characters
      resources :quotes
      resources :episodes
      resources :seasons
      resources :actors
  #   end
  # end
end

