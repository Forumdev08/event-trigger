Rails.application.routes.draw do
  root 'home#index'

  post 'create_event_a', to: 'home#create_event_a'
  post 'create_event_b', to: 'home#create_event_b'
end
