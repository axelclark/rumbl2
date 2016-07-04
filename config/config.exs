# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rumbl2,
  ecto_repos: [Rumbl2.Repo]

# Configures the endpoint
config :rumbl2, Rumbl2.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Cl5/IXSt5CXF0ym1sOxHwTQM9yk4r7Xxrwf3rxsxQlGiwYuDfhuxtzE8NdBFEuH+",
  render_errors: [view: Rumbl2.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rumbl2.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
