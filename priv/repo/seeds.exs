# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
  NhlTeams.Repo.insert!(%NhlTeams.Team{location: "New Jersey", mascot: "Devils", division: "Metropolitan", division_id: "0"})
  NhlTeams.Repo.insert!(%NhlTeams.Team{location: "New York", mascot: "Rangers", division: "Metropolitan", division_id: "0"})
  NhlTeams.Repo.insert!(%NhlTeams.Team{location: "Detroit", mascot: "Red Wings", division: "Atlantic", division_id: "1"})
  NhlTeams.Repo.insert!(%NhlTeams.Team{location: "Boston", mascot: "Bruins", division: "Atlantic", division_id: "1"})
  NhlTeams.Repo.insert!(%NhlTeams.Team{location: "Nashville", mascot: "Predators", division: "Central", division_id: "2"})  
  NhlTeams.Repo.insert!(%NhlTeams.Team{location: "Las Vegas", mascot: "Golden Knights", division: "Pacific", division_id: "3"})  
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
