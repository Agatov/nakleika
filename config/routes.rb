Nakleika::Application.routes.draw do
  root to: 'application#index'

  namespace :admin do
    resource :template
    resource :setting
    resources :questions
    resources :reports
  end
end
