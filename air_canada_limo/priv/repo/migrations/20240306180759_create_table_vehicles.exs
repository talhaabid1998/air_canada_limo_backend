defmodule AirCanadaLimo.Repo.Migrations.CreateTableVehicles do
  use Migration

  def change do
    create table(:vehicles) do
      add :type, :string
      add :number_of_passengers, :integer
      timestamp()
    end
  end
end
