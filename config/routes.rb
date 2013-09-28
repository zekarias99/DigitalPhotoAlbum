DigitalPhotoAlbum::Application.routes.draw do

  resources :albums

  root 'albums#index'

  
end
