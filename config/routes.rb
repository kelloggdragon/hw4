Rails.application.routes.draw do
  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"

  # Login/logout
  get("/login", { :controller => "sessions", :action => "new" })
  get("/logout", { :controller => "sessions", :action => "destroy" })

  # Define the root route
  get("/", { :controller => "places", :action => "index" })
end
