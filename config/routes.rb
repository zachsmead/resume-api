Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
  	namespace :v1 do
  		resources :capstones
  	end
  end
  namespace :api do
  	namespace :v1 do
  		resources :skills
  	end
  end


  root to: "api/v1/students#index"

  namespace :api do
  	namespace :v1 do
  		resources :students
  	end
  end


end
