MustacheWall::Application.routes.draw do
  root :to => "moustaches#index"
  resources :moustaches
end
