Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :students do
        collection do
          get :search
        end
      end
    end
  end
end
