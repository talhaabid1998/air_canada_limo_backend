import Config

# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix assets.deploy` task,
# which you should run after static files are built and
# before starting your production server.
config :air_canada_limo, AirCanadaLimoWeb.Endpoint,
  http: [port: System.get_env("PORT") || 4000],
  url: [host: "18.208.215.228", port: 80],
  cache_static_manifest: "priv/static/cache_manifest.json",
  server: true,
  server_settings: [
    dispatch: [
      {_, [{~c"_", _, Phoenix.Endpoint.Cowboy2Handler, {AirCanadaLimoWeb.Endpoint, []}}]}
    ]
  ]

# Configures Swoosh API Client
config :swoosh, api_client: Swoosh.ApiClient.Finch, finch_name: AirCanadaLimo.Finch

# Disable Swoosh Local Memory Storage
config :swoosh, local: false

# Do not print debug messages in production
config :logger, level: :info

# Runtime production configuration, including reading
# of environment variables, is done on config/runtime.exs.
