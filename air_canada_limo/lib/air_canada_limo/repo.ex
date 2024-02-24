defmodule AirCanadaLimo.Repo do
  use Ecto.Repo,
    otp_app: :air_canada_limo,
    adapter: Ecto.Adapters.Postgres
end
