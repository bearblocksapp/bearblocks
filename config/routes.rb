Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #  match '/', to: 'welcome#check_subdomain', constraints: { subdomain: /.+/ }, via: [:get]
   root "welcome#index"
end
