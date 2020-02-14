defmodule PhoenixTeste.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_teste,
    adapter: Ecto.Adapters.Postgres
end
