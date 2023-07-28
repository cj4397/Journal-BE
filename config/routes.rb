Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  post 'user' => 'users#create'
  put 'user/profile' => 'users#update'
  delete 'user/delete' => 'users#destroy'
  post '/user/signin' => 'users#signin'

  post 'user/category/all' => 'category#show'
  post 'user/category' => 'category#create'
  delete 'user/category/delete' => 'category#destroy'
  put 'user/category/edit' => 'category#update'


  post 'user/task/create' => 'task#create'
  delete 'user/task/delete' => 'task#destroy'
  put 'user/task/edit' => 'task#update'
  post 'user/category/task' => 'task#category_create'
  post 'user/task' => 'task#show'
  post 'user/task/move' => 'task#move'


  # Defines the root path route ("/")
  # root "articles#index"
end
