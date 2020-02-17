defmodule PhoenixReactPlaygroundWeb.Router do
  use PhoenixReactPlaygroundWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: PhoenixReactPlaygroundWeb.Schema

    forward "/", Absinthe.Plug, schema: PhoenixReactPlaygroundWeb.Schema
  end
end