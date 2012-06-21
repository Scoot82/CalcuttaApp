CalcuttaApp::Application.routes.draw do
  
  root :to => 'teams#index'
  
  devise_for :users
  
  get '/teams', :controller => "teams", :action => "index", :as => :teams
  post '/teams', :controller => "teams", :action => "create"
  
  get '/teams/new', :controller => "teams", :action => "new", :as => :new_team
  get '/teams/:id', :controller => "teams", :action => "show", :as => :team
  put '/teams/:id', :controller => "teams", :action => "update"
  delete '/teams/:id', :controller => "teams", :action => "destroy", :as => :destroy_team
  
  get '/teams/:id/edit', :controller => "teams", :action => "edit", :as => :edit_team
  
  get '/bids', :controller => 'bids', :action => "index", :as => :bids
  post '/bids', :controller => 'bids', :action => "create"
  get '/bids/new', :controller => 'bids', :action => "new", :as => :new_bid
  
  end
