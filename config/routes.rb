Rails.application.routes.draw do
  resources :authors, only: %i[show index] do
    resources :posts, only: %i[show index new edit]
  end

  resources :posts, only: %i[index show new create edit update]

  namespace :admin do
    resources :stats, only: [:index]
  end

  root 'posts#index'
end


def fib(n)
  return n if n < 2

  return fib(n-1) + fib(n-2)
end
