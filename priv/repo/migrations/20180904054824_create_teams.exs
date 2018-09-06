defmodule NhlTeams.Repo.Migrations.CreateTeams do
  use Ecto.Migration

  def change do
    create table(:teams) do
      add :location, :string
      add :mascot, :string
      add :division_id, :string
      add :division, :string

      timestamps()
    end

  end
end
