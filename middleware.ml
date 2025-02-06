let () =
  Dream.run ~interface:"0.0.0.0" ~port:443 ~tls:true
  @@ Dream.logger @@ Dream.router [
    (Dream.get "/" (Dream.from_filesystem "wwwroot" "index.html"));
    (Dream.get "/**" (Dream.static "./wwwroot"))];