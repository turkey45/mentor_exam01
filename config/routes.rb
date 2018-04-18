Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/css-exam' => 'css_exam#index'
  get '/ruby-exam' => 'ruby_exam#index'

  resources :rails_exam, only: :index do
    collection do
      get 'errors'
      get 'backend'
      get 'active_record_exam'
    end
  end
end
