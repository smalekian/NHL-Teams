defmodule NhlTeams.Repo.Migrations.CreateUsersTable do
  use Ecto.Migration

  def change do
    create table(:coaches) do
      add :name, :string
      add :team_location, :string
      add :team_mascot, :string
      add :team_division_name, :string
      add :team_division_id, :integer

      timestamps()
    end

  end
end
