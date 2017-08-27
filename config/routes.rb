Rails.application.routes.draw do
  get 'home/main'

  get 'home/result'
  post 'home/result'

  post 'home/show_result'

  root 'home#main'
end
