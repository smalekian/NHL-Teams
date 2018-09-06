defmodule NhlTeams.Repo.Migrations.ChangeIntIdToString do
  use Ecto.Migration

  def change do
    alter table(:coaches) do
      modify :team_division_id, :string
    end
  end
end
