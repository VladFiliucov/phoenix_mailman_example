defmodule PhoenixMailmanExample.PageController do
  use PhoenixMailmanExample.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
