Rails.application.routes.draw do
  get 'details/index'
  get 'details/show'
  get 'details/new'
  get 'details/create'
  get 'details/edit'
  get 'details/update'
  get 'details/destroy'
  get 'people/index'
  get 'people/show'
  get 'people/new'
  get 'people/create'
  get 'people/edit'
  get 'people/update'
  get 'people/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
