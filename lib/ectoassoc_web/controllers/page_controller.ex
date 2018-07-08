defmodule EctoassocWeb.PageController do
  use EctoassocWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
