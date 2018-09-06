# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :nhl_teams,
  ecto_repos: [NhlTeams.Repo]

# Configures the endpoint
config :nhl_teams, NhlTeamsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wjtcpUePdx7wdpi8t80Jbe1edhWjrXPwlX5hJC8b5ML9xpaZPNFFs9madc6BtBlv",
  render_errors: [view: NhlTeamsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: NhlTeams.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
