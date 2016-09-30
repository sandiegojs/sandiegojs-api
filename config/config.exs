# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sandiegojs_api,
  ecto_repos: [SandiegojsApi.Repo]

# Configures the endpoint
config :sandiegojs_api, SandiegojsApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "+V054sc98bBSl6X3wXFuhqHl45BRF9z709alarFDXLyYv/TPV2N/w7MSpWtX8Lfz",
  render_errors: [view: SandiegojsApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: SandiegojsApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :sandiegojs_api,
  meetup_key: "4853733f70347335471c6f8576e272b"

config :phoenix, :format_encoders,
  "json-api": Poison

config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
