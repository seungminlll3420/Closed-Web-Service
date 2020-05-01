Rails.application.routes.draw do
  
  get 'school_lists/index'
  get 'school_lists/new'
  post 'school_lists/create'
  get 'school_lists/edit/:id' => "school_lists#edit"
  post 'school_lists/update/:id' => "school_lists#update"
  get 'school_lists/destroy/:id'=> "school_lists#destroy"
  get 'school_lists/show/:id' => "school_lists#show"
  devise_for :users
  root "posts#index"
  
  get 'my_infos/index'
  get 'my_infos/new'
  post 'my_infos/create'
  get 'my_infos/show' => "my_infos#show"
  get 'my_infos/edit/:id' => "my_infos#edit"
  post 'my_infos/update/:id' => "my_infos#update"

  get 'posts/index'
  get 'posts/new'
  post 'posts/create'
  get 'posts/show/:id' => "posts#show"
  get 'posts/edit/:id' => "posts#edit"
  post 'posts/update/:id' => "posts#update"
  get 'posts/destroy/:id' => "posts#destroy"
  get 'posts/mypost'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
