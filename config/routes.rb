Rails.application.routes.draw do
  get("/", { :controller => "dice", :action => "home" })

  get("/process_roll", { :controller => "dice", :action => "process_roll" })
end
