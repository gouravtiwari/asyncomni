Asyncomni::Engine.routes.draw do
  resources :omniture, :only => [:index]
end
