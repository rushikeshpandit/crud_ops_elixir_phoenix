defmodule CrudDemo.Repo.Migrations.Age do
  use Ecto.Migration

  def change do
    alter table(:persons) do
      add :age, :integer
    end
  end
end
