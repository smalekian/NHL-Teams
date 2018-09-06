defmodule NhlTeams.CoachesQueries do
  import Ecto.Query
  import Logger

  alias NhlTeams.Repo

  def create(coach) do
    Repo.insert!(coach)
  end

end