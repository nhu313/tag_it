defmodule TagIt.PageController do
  use TagIt.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
