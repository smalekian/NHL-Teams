use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :nhl_teams, NhlTeamsWeb.Endpoint,
  secret_key_base: "I8SRQrhhl8b7CVRHZEiJ9SsYwIH69ExEdasb3bGsDnHxrJ3bUTwJJUAeQP6p2OLt"

# Configure your database
config :nhl_teams, NhlTeams.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "nhl_teams_prod",
  pool_size: 15
