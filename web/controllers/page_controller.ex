defmodule Rest.PageController do
  use Rest.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
