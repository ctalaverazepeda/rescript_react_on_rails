Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "pages#hello_world"
   get "formpage", to: "pages#formpage"
   get "index", to: "pages#hello_world"

end
