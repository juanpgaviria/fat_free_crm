#FatFreeCRM::Application.routes.draw do
#  FatFreeCRM::Application.routes.draw do
Rails.application.routes.draw do
  Rails.application.routes.draw do
    scope Setting.base_url.to_s do
      namespace :admin do
        resources :products do
          collection do
            get :search
            post :auto_complete
          end
          member do
            get :confirm
          end
        end
      end
    end
  end
end
