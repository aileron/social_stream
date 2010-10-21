module ActionDispatch::Routing
  class Mapper
    # Includes routes for SocialStream. Use it inside your routes file
    #   social_stream
    def social_stream
      devise_for :users
      resources :users
      resources :groups

      match 'home' => 'home#index', :as => :home

      resources :ties
      resources :activities do
        resource :like
      end
      resources :posts
      resources :comments
    end
  end
end
