defmodule AirCanadaLimo.Repo.Migrations.CreateTableAddPostgisExtentions do
  use Migration

  def change do
    execute("""
    CREATE EXTENSION  IF NOT EXISTS postgis;
    """)
  end
end
