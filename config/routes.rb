Rails.application.routes.draw do
  root 'static_pages#home'
  get 'tic_tac_toe/play'
  get 'tic_tac_toe/game_over'
  get 'static_pages/home'
  get 'static_pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
