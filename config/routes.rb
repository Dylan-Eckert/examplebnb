Rails.application.routes.draw do

  resources :places, shallow: true do
    resources :reviews
  end

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
