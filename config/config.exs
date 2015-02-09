# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :reaxt_test, ReaxtTest.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zLZNSdQ0iFl3Rg+gn/bSVvrWl21Qr4hqjpTD/JzgIqgPinb1/pWRBfp/7/AKjEFX",
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :reaxt, :otp_app, :reaxt_test
config :reaxt, :hot, if(Mix.env == :dev, do: :client, else: false)
config :reaxt, :pool_size, if(Mix.env == :dev, do: 1, else: 10)

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
