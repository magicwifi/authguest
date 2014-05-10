Authguest::Application.routes.draw do

  post "bindurl" =>"guest#bindurl"
  post "auth_update" => "auth#update"
  post "conf_update" => "conf#update"
  post "showconnections" => "guest#show_connections"
  post "update_auth_type" => "guest#update_auth_type"
  post "update_auth_device" => "guest#update_auth_device"
  post "update_access_time" => "guest#update_access_time"

end
