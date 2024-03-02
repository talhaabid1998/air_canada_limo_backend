defmodule AirCanadaLimo.Repo.Migrations.CreateTableUsers do
  use Migration

  def change do
    create table(:users) do
      add :email, :string
      add :first_name, :string
      add :last_name, :string
      add :phone_number, :string
      add :description, :text
      add :location, :geometry
      timestamp()
    end

    create index(:users, [:email])
  end
end
