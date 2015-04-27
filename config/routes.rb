Rails.application.routes.draw do
  # Routes to READ photos
  get("/photos/new", {:controller => "photos", :action => "new"})
  get("/photos/:id", { :controller => "photos", :action => "show" })
  get("/users/:id", { :controller => "users", :action => "people" })
  post("/photos/", {:controller => "photos", :action => "create"})
  get("/photos/", {:controller => "photos", :action => "index"})
end
