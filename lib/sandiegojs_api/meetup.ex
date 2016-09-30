defmodule SandiegojsApi.Meetup do

  def get_events() do
    key = Application.get_env(:sandiegojs_api, :meetup_key)
    case HTTPoison.get(
      "https://api.meetup.com/sandiegojs/events?sign=true&key=#{key}"
    ) do
      {:ok, %HTTPoison.Response{body: response}} ->
        {:ok, Poison.Parser.parse!(response)}
      {:error, error } ->
        {:error, error}
    end
  end
end
