defmodule AuthPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :auth_phoenix,
    adapter: Ecto.Adapters.Postgres
end
