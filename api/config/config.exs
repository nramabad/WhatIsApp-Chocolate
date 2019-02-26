# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :what_is_app,
  ecto_repos: [WhatIsApp.Repo]

# Configures the endpoint
config :what_is_app, WhatIsApp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sEQ3Z3ID5qqY5zuLSzYC2fVbxGpEfL39YO35FdPSOTyWQKdKZlHMzAH1YhFIHjR4",
  render_errors: [view: WhatIsApp.ErrorView, accepts: ~w(json)],
  pubsub: [name: WhatIsApp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
config :guardian, Guardian,
  issuer: "WhatIsApp",
  ttl: {30, :days},
  verify_issuer: true,
  serializer: WhatIsApp.GuardianSerializer

import_config "#{Mix.env}.exs"
