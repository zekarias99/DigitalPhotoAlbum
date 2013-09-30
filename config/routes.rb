DigitalPhotoAlbum::Application.routes.draw do

	post 'albums/:id' => 'pictures#create'

  resources :albums

  root 'albums#index'

  
end
