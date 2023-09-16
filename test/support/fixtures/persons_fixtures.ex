defmodule CrudDemo.PersonsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `CrudDemo.Persons` context.
  """

  @doc """
  Generate a person.
  """
  def person_fixture(attrs \\ %{}) do
    {:ok, person} =
      attrs
      |> Enum.into(%{
        name: "some name",
        description: "some description"
      })
      |> CrudDemo.Persons.create_person()

    person
  end
end
