defmodule NhlTeamsWeb.LoginController do
  use NhlTeamsWeb, :controller
  import HTTPoison
  import Poison
  
  def create(conn, _params) do
    changeset = NhlTeams.Coaches.changeset(%NhlTeams.Coaches{}, %{})
    render conn, "index.html", changeset: changeset
  end

  def add(conn, %{"coaches" => info}) do
    changeset = NhlTeams.Coaches.changeset(%NhlTeams.Coaches{}, info)
    NhlTeams.CoachesQueries.create(changeset)

    # hacky deluxe, but let's call Elasticsearch!
    div = String.capitalize(String.downcase(info["team_division_name"]))
    reqbody = Poison.encode!(%{"query" => %{"match" => %{"division" => div}}}) #Coaches are only allowed to view teams from their division!
    url = "localhost:9200/nhl_index/teams/_search"
    headerarg = [{"Content-type", "application/json"}]

    # The next part pattern matches the body value from the HTTP response.
    # Since we know what to expect from the tuple on the left, we can obtain the response body by instantiating its value in a variable.
    {:ok, %HTTPoison.Response{body: raw_body}} = HTTPoison.request(:get, url, reqbody, headerarg)
    body_map = Poison.decode!(raw_body)
    teams_list = body_map["hits"]["hits"] # This is a list of the teams from this coach's division.

    render conn, "results.html", teams: teams_list

  end

end
