TemplateInheritanceExample::Application.routes.draw do
  scope :settings, :path => '/settings', :controller => "settings" do
    get :profile, :as => :profile_settings
    get :account, :as => :account_settings
    get :billing, :as => :billing_settings
  end

  get '/about' => 'pages#about'
  get '/help' => 'pages#help'
  root :to => 'pages#home', :as => :home
end
