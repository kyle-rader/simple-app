Rails.application.routes.draw do
  root 'application#index'
  get 'privacy', to: 'application#privacy'
end
