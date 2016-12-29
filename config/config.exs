# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :split,
  ecto_repos: [Split.Repo]

# Configures the endpoint
config :split, Split.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sugXq7F0LcCd1qCqRh0Ya1vV4HASdFceAKFgM8V9efjM1vlC+zdnRlATKSDfRyuR",
  render_errors: [view: Split.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Split.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
