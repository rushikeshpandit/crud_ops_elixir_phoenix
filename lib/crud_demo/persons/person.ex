defmodule CrudDemo.Persons.Person do
  use Ecto.Schema
  import Ecto.Changeset

  schema "persons" do
    field :name, :string
    field :description, :string
    field :age, :integer

    timestamps()
  end

  @doc false
  def changeset(person, attrs) do
    person
    |> cast(attrs, [:name, :description, :age])
    |> validate_required([:name, :description, :age])
  end
end
