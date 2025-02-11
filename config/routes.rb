Rails.application.routes.draw do
  
  get("/dice/2/6", { :controller => "dice", :action =>"two_six"})

  get("/dice/2/10", { :controller => "dice", :action =>"two_ten"})

  get("/dice/1/20", { :controller => "dice", :action =>"one_twenty"})

  get("/dice/5/4", { :controller => "dice", :action =>"five_four"})

  get("/dice/:num_die/:num_sides", { :controller => "dice", :action => "roll" })

  get("/", { :controller => "dice", :action =>"home"})

end
