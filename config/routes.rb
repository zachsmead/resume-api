Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "api/v1/students#index"

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



  namespace :api do
  	namespace :v1 do
  		resources :students
      post 'students/login', to: "students#login"
  	end
  end

  namespace :api do
    namespace :v1 do
      resources :educations
    end
  end

  namespace :api do
    namespace :v1 do
      resources :experiences
    end
  end

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



  namespace :api do
  	namespace :v2 do
  		resources :students
      post 'students/login', to: "student#login"
  	end
  end

  namespace :api do
    namespace :v2 do
      resources :educations
    end
  end

  namespace :api do
    namespace :v2 do
      resources :experiences
    end
  end


end
