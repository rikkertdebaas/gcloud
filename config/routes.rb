Rails.application.routes.draw do
  get 'navbar/in_balans'

  get 'navbar/home'

  get 'navbar/diensten'

  get 'navbar/samenwerkingen'

  get 'navbar/contact'

  get 'navbar/over'

  get 'footer/algemene_voorwaarden'

  get 'footer/disclaimer'

  get 'footer/privacy'

  get 'footer/klachten'
  get 'navbar/overig'
  get 'footer/tarieven'
  get 'footer/veelgestelde_vragen'
  get 'navbar/contact', to: 'messages#new', as: 'new_message'
  post 'navbar/contact', to: 'messages#create', as: 'create_message'
 root 'navbar#home'
end
