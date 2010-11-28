Rails.application.routes.draw do
  namespace "regulate" do
    resources :pages
  end
end