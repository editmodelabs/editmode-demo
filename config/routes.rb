Rails.application.routes.draw do
  
  root :to => "site#home"
  get "/:page" => "site#page", :as => "page_path"

  get "/chunksapp/clear_cache" => "site#home" , :as => :chunks_clear_cache

end
