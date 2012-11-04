Myapp4::Application.routes.draw do

  resources :marinas do
    collection do
      post :auto_complete_name
      get :search
      get :pending, :path => "/pending/:id"
    end


  end

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users



end