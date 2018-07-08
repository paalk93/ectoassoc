# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ectoassoc,
  ecto_repos: [Ectoassoc.Repo]

# Configures the endpoint
config :ectoassoc, EctoassocWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "uIJ+MvGYWn0L0hEil89XqqBhmbtd7AK9dbMwjjz0o1WDV0mS+Kq/S30BTCV1an1e",
  render_errors: [view: EctoassocWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ectoassoc.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
