defmodule HelloPhoenix.GreetController do
  use HelloPhoenix.Web, :controller

  def hello(conn, _params) do
    render conn, "hello.html"
  end
end
