Rails.application.routes.draw do
  root 'wrapper#index'
  post '/', to: 'wrapper#wrap'
end
