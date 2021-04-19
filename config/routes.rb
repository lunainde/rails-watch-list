Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  # root to meaning ?????????????????????????????????????????????????

  resources :lists, only: [:index, :new, :show, :create, :destroy] do
    resources :bookmarks, only: [:new, :create]
  #  resources :reviews, only: :create
  end
  # destroy bookmark only w/o touching list/movie
  resources :bookmarks, only: :destroy
  # resources :reviews, only: :destroy
end

# ➜  rails-watch-list git:(master) ✗ rails routes
