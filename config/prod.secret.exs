use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :actions, ActionsWeb.Endpoint,
  secret_key_base: ENV["SECRET_KEY_BASE"]

# Configure your database
config :actions, Actions.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: ENV["DB_USERNAME"],
  password: ENV["DB_PASSWORD"],
  database: "database_name",
  size: 20 # The amount of database connections in the pool

