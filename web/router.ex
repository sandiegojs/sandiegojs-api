defmodule SandiegojsApi.Router do
  use SandiegojsApi.Web, :router

  pipeline :json_api do
    plug :accepts, ["json-api"]
    plug JaSerializer.ContentTypeNegotiation
    plug JaSerializer.Deserializer
  end

  scope "/api", SandiegojsApi do
    pipe_through :json_api

    scope "/v1", Api.V1 do
      get "/events", EventsController, :events
    end
  end
end
