defmodule AirCanadaLimoWeb.Schemas.Vehicle do
  @moduledoc """
  The schema for a vehicle
  """
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [
  ]

  @optional_fields [
    :type,
    :number_of_passengers,
    :inserted_at,
    :updated_at
  ]


  @all_fields @required_fields ++ @optional_fields

  schema "vehicles" do
    field :type, :string
    field :number_of_passengers, :integer

    timestamps()
  end

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @all_fields)
    |> validate_required(@required_fields)
  end
end
