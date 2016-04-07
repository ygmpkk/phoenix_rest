defmodule Rest.Router do
  use Rest.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/", Rest do
  #   pipe_through :browser # Use the default browser stack

  #   get "/", PageController, :index
  # end

  # Other scopes may use custom stacks.
  # scope "/api", Rest do
  #   pipe_through :api
  # end
  scope "/", Rest do
    pipe_through :api
    get "/", RestController, :index
  end
  scope "/api", Rest do
    pipe_through :api
    get "/", RestController, :api
    resources "/users", UserController
  end
end
