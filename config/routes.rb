Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get '/about' => 'home#about'
  # Get Whack a Trump
  get 'whack-a-trump' => 'whack_a_trump#index'
end
