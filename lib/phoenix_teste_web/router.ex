defmodule PhoenixTesteWeb.Router do
  use PhoenixTesteWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PhoenixTesteWeb do
    pipe_through :api
  end
end
