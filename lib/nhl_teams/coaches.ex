defmodule NhlTeams.Coaches do
  use Ecto.Schema
  import Ecto.Changeset


  schema "coaches" do
    field :name, :string
    field :team_location, :string
    field :team_mascot, :string
    field :team_division_id, :string
    field :team_division_name, :string

    timestamps()
  end

  @doc false
  def changeset(team, attrs) do
    team
    |> cast(attrs, [:name, :team_location, :team_mascot, :team_division_id, :team_division_name])
    |> validate_required([:name, :team_location, :team_mascot, :team_division_id, :team_division_name])
  end
end
