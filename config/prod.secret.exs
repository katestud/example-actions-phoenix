use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :actions, ActionsWeb.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :actions, Actions.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("PROD_DB_USERNAME"),
  password: System.get_env("PROD_DB_PASSWORD"),
  database: System.get_env("PROD_DB_NAME"),
  hostname: System.get_env("PROD_DB_HOST"),
  size: 20 # The amount of database connections in the pool

