use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :actions, ActionsWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :actions, Actions.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "actions_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# configure database for github actions
if System.get_env("GITHUB_ACTIONS") do
  config :actions, Actions.Repo,
    username: "postgres",
    password: "postgres"
end
