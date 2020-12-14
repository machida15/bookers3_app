Rails.application.routes.draw do
  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  get 'books/:id' => 'books#show',as:'book'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id/edit' => 'books#edit',as:'edit_book'
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy',as:'destroy_book'
end
