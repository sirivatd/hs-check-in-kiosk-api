Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :majors, only: :index
    resources :schools, only: :index
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
