defmodule SandiegojsApi.Api.V1.EventsController do
  use SandiegojsApi.Web, :controller
  alias SandiegojsApi.Meetup

  def events(conn, _params) do
    with {:ok, events} <- Meetup.get_events() do
      json conn, events
    else
      {:error, error} ->
        json conn, error
    end
  end
end
