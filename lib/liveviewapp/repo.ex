defmodule Liveviewapp.Repo do
  use Ecto.Repo,
    otp_app: :liveviewapp,
    adapter: Ecto.Adapters.Postgres
end
