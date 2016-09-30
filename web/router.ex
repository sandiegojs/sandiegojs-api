defmodule SandiegojsApi.Router do
  use SandiegojsApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SandiegojsApi do
    pipe_through :api
  end
end
