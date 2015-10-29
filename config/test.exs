use Mix.Config

# Print only warnings and errors during test
config :logger, :console,
  format: "$metadata[$level] $message\n",
  level: :warn

config :logger, :truncate, 99999