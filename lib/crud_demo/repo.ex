defmodule CrudDemo.Repo do
  use Ecto.Repo,
    otp_app: :crud_demo,
    adapter: Ecto.Adapters.Postgres
end
