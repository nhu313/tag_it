defmodule TagIt.Router do
  use TagIt.Web, :router

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

  scope "/", TagIt do
    pipe_through :browser # Use the default browser stack

    get "/", LinkController, :index
    resources "/links", LinkController, except: [:new]
  end

  # Other scopes may use custom stacks.
  # scope "/api", TagIt do
  #   pipe_through :api
  # end
end
