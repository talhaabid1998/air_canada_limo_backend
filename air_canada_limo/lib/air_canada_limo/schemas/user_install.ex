defmodule AirCanadaLimoWeb.Schemas.UserInstall do
  @moduledoc """
  The schema for a user installs
  """
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [
    :device_token,
    :user_id
  ]

  @optional_fields [
    :device_info,
    :fcm_token,
    :os,
    :inserted_at,
    :updated_at
  ]


  @all_fields @required_fields ++ @optional_fields

  schema "user_installs" do
    field :device_info, :string
    field :device_token, :string
    field :fcm_token, :string
    field :os, :string
    belongs_to :user, AirCanadaLimoWeb.Schemas.User

    timestamps()
  end

  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @all_fields)
    |> validate_required(@required_fields)
  end
end
