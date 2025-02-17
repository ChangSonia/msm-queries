Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })

  # static route should always be on top!
  get("/directors/youngest", { :controller => "directors", :action => "youngest" })
  get("/directors/eldest", { :controller => "directors", :action => "eldest" })

  get("/directors/:an_id", {:controller => "directors", :action => "show"})

  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:an_id", {:controller => "movies", :action => "show"})

  get("/actors", { :controller => "actors", :action => "index" })
  get("/actors/:an_id", { :controller => "actors", :action => "show" })

  

end
