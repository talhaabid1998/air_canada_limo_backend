defmodule AirCanadaLimoWeb.Schemas.User do
  @moduledoc """
  The schema for a user
  """
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [
    :email,
    :phone_number
  ]

  @optional_fields [
    :first_name,
    :last_name,
    :location,
    :description,
    :inserted_at,
    :updated_at
  ]


  @all_fields @required_fields ++ @optional_fields

  schema "users" do
    field :first_name, :string
    field :email, :string
    field :last_name, :string
    field :phone_number, :string
    field :description, :string
    field :location, Geo.PostGIS.Geometry

    timestamps()
  end

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @all_fields)
    |> validate_required(@required_fields)
  end
end
