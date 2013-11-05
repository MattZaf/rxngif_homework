Rxngif::Application.routes.draw do
  get("/picture_details/:id", { :controller => "pictures", :action => "show" })
  get("/all_pictures", { :controller => "pictures", :action => "index" })
  get("/new_picture_form", { :controller => "pictures", :action => "new" })
end
