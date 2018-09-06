defmodule NhlTeamsWeb.PageController do
  use NhlTeamsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
  
end
