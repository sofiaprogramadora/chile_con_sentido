Rails.application.routes.draw do
  get 'home/main'

  get 'home/result'

  root 'home#main'
end
