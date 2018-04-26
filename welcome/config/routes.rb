Rails.application.routes.draw do
  get 'users/create_user', to: 'users#new', as: 'users'
  post 'users/create_user', to: 'users#new_post', as: 'users1'
  root to: 'static_pages#home', as: 'root'
  get '/contact', to: 'static_pages#contact', as: 'contact'
  get '/about', to: 'static_pages#about', as: 'about'
  get '/about/toi', to: 'static_pages#toi', as: 'toi'
  get '/about/groupe', to: 'static_pages#groupe', as: 'groupe'
  get '/users/:id', to: 'users#show', as: 'profil'
  get '/users/:username', to: 'users#showname', as: 'profilname'

end
