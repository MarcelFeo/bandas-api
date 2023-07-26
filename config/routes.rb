Rails.application.routes.draw do
  resources :bandas do
    resources :musicos
    resources :musicas
    resources :albuns
  end
end
