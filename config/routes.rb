Rails.application.routes.draw do
  resources :omniture, :only => [:index]
end
