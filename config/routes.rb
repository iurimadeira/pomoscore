Rails.application.routes.draw do
  devise_for :users
  resources :pomodoros
  root 'pomodoros#index'
end
