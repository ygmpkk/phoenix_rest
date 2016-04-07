defmodule Rest.RestController do
  use Rest.Web, :controller

  def index(conn, _params) do
    json conn, %{
      name: "rest",
      author: "timothy"
    }
  end

  def api(conn, _params) do
    json conn, %{
      name: "rest",
      version: "0.0.1",
    }
  end
end
