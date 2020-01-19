Rails.application.routes.draw do
  root 'books#top'
  get 'books/top'
  get 'books/index' 
  get 'books/show'
  get 'books/new'
  get 'books/edit'
  post 'books/:id' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get 'books/:id/edit' => 'books#show'
  get 'books/:id' => 'books#edit', as: 'edit'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
