Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post "/users", controller: "users", action: "create"
  post "/sessions", controller: "sessions", action: "create"

  get "/products", controller: "products", action: "index"
  post "/products", controller: "products", action: "create"
  get "/products/:id", controller: "products", action: "show"
  patch "/products/:id", controller: "products", action: "update"
  delete "/products/:id", controller: "products", action: "destroy"

  get "/carted_products", controller: "carted_products", action: "index"
  post "/carted_products", controller: "carted_products", action: "create"
  delete "/carted_products", controller: "carted_products", action: "destroy"

  get "/orders", controller: "orders", action: "index"
  post "/orders", controller: "orders", action: "create"
  get "/orders/:id", controller: "orders", action: "show"
end
