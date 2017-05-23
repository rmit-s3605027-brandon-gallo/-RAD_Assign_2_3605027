Rails.application.routes.draw do
  root 'entries#form'
  resources :cous
  get 'entries/logoff'=>'entries#logoff'
  post 'entries/logoff'=>'entries#logoff'

  resources :coordins
 get 'entries/login'=>'entries#login'
  post 'entries/login'=>'entries#login'

  get 'entries/coord'=>'entries#coord'
  post 'entries/coord'=>'entries#coord'

   get 'entries/course'=>'entries#course'
  post 'entries/course'=>'entries#course'


  get 'entries/category'=>'entries#category'
  post 'entries/category'=>'entries#category'

  get 'entries/form'=>'entries#form'
  post 'entries/form'=>'entries#form'
get 'entries/location'=>'entries#location'
  post 'entries/location'=>'entries#location'
  get 'entries/login'=>'entries#login'
  post 'entries/login'=>'entries#login'
    get 'entries/coordedit'=>'entries#coordedit'
  post 'entries/coordedit'=>'entries#coordedit'
  get 'entries/course_view'=>'entries#course_view'
    post 'entries/course_view'=>'entries#course_view'
  get 'entries/courseedit'=>'entries#courseedit'
    post 'entries/courseedit'=>'entries#courseedit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
