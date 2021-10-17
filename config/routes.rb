Rails.application.routes.draw do
  devise_for :admins, skip: :all


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      scope 'admin' do
        get 'login', to: 'admin#login'
        get 'admin', to: 'admin#show'
        get 'logout', to: 'admin#logout'
      end
      scope 'teachers' do
        get 'index', to: 'teachers#index'
        get 'show/:id', to: 'teachers#show'
        post 'create', to: 'teachers#create'
        patch 'update/:id', to: 'teachers#update'
        delete 'delete/:id', to: 'teachers#delete'
        get 'my_students/:id', to: 'teachers#my_students'
      end
      scope 'languages' do
        get 'index', to: 'languages#index'
        post 'create', to: 'languages#create'
        delete 'delete/:id', to: 'languages#delete'
      end
      scope 'students' do
        get 'index', to: 'students#index'
        get 'show/:id', to: 'students#show'
        post 'create', to: 'students#create'
        patch 'update/:id', to: 'students#update'
        delete 'delete/:id', to: 'students#delete'
      end
    end
  end
  
  get 'authentication_failure', to: 'application#authentication_failure'
  patch 'authentication_failure', to: 'application#authentication_failure'
  delete 'authentication_failure', to: 'application#authentication_failure'  
end
