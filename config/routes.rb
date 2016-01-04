Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do
      resources :characters
      resources :quotes
      resources :episodes
      resources :seasons
      resources :actors
    end
  end
end

