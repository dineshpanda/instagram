Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "users#index"
  # Routes for the Post resource:

  # CREATE
  get("/posts/new", { :controller => "posts", :action => "new_form" })
  post("/create_post", { :controller => "posts", :action => "create_row" })

  # READ
  get("/posts", { :controller => "posts", :action => "index" })
  get("/posts/:id_to_display", { :controller => "posts", :action => "show" })

  # UPDATE
  get("/posts/:prefill_with_id/edit", { :controller => "posts", :action => "edit_form" })
  post("/update_post/:id_to_modify", { :controller => "posts", :action => "update_row" })

  # DELETE
  get("/delete_post/:id_to_remove", { :controller => "posts", :action => "destroy_row" })
  get("/delete_post_from_user/:id_to_remove", { :controller => "posts", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the User resource:

  # CREATE
  get("/users/new", { :controller => "users", :action => "new_form" })
  post("/create_user", { :controller => "users", :action => "create_row" })

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  # UPDATE
  get("/users/:prefill_with_id/edit", { :controller => "users", :action => "edit_form" })
  post("/update_user/:id_to_modify", { :controller => "users", :action => "update_row" })

  # DELETE
  get("/delete_user/:id_to_remove", { :controller => "users", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
