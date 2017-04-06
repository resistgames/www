Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#about'
  #get '/about' => 'home#about'
  get '/join' => 'home#join'
  get '/thankyou' => 'home#thankyou'
  get '/confirmation' => 'home#confirmation'
  get '/how-to' => 'home#howto'
  # Get Whack a Trump
  get 'whack-a-trump' => 'whack_a_trump#index'
end
