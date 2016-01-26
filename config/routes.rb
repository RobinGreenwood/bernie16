Berni::Application.routes.draw do
 get '/bernie', to: 'static_pages#home'
 post '/notes', to: 'notes#create'
end
