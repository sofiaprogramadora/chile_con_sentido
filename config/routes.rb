Rails.application.routes.draw do
  get 'home/main'

  get 'home/result'
  post 'home/result'
  root 'home#main'

  post 'home/show_result'

end
