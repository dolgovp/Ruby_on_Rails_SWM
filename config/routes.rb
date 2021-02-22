Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    resources :posts
    devise_for :users
    root 'posts#index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
