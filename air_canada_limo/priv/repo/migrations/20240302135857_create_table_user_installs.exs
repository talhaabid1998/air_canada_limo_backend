defmodule AirCanadaLimo.Repo.Migrations.CreateTableUserInstalls do
  use Migration

  def change do
    create table(:user_installs) do
      add :device_info, :text
      add :device_token, :text
      add :fcm_token, :text
      add :os, :string
      add :user_id, references(:users, on_delete: :delete_all)
      timestamp()
    end

    create index(:user_installs, [:user_id])
    create unique_index(:user_installs, [:device_token])
  end
end
