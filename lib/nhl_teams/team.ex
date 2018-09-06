defmodule NhlTeams.Team do
  use Ecto.Schema
  import Ecto.Changeset


  schema "teams" do
    field :division, :string
    field :location, :string
    field :mascot, :string
    field :division_id, :integer

    timestamps()
  end

  @doc false
  def changeset(team, attrs) do
    team
    |> cast(attrs, [:location, :mascot, :division_id, :division])
    |> validate_required([:location, :mascot, :division_id, :division])
  end
end
