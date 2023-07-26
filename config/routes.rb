Rails.application.routes.draw do
  resources :bandas do
    resources :musicos
    resources :musicas
    resources :albums
  end
end
