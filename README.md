# NhlTeams

## Elasticsearch Setup
Download an Elasticsearch Docker image by running the following:
`docker pull docker.elastic.co/elasticsearch/elasticsearch:6.4.0`

Run a container in that image with this:
`docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:6.4.0`

Feel free to `docker ps -a` to verify everything went alright.

Now populate an Elasticsearch cluster with this data:
```
curl -XPUT localhost:9200/nhl_index/teams/1 -H 'Content-Type: application/json' -d '{"location": "New Jersey", "mascot": "Devils", "division": "Metropolitan", "division_id": 0}'
curl -XPUT localhost:9200/nhl_index/teams/2 -H 'Content-Type: application/json' -d '{"location": "New York", "mascot": "Rangers", "division": "Metropolitan", "division_id": 0}'
curl -XPUT localhost:9200/nhl_index/teams/3 -H 'Content-Type: application/json' -d '{"location": "Detroit", "mascot": "Red Wings", "division": "Atlantic", "division_id": 1}'
curl -XPUT localhost:9200/nhl_index/teams/4 -H 'Content-Type: application/json' -d '{"location": "Boston", "mascot": "Bruins", "division": "Atlantic", "division_id": 1}'
curl -XPUT localhost:9200/nhl_index/teams/5 -H 'Content-Type: application/json' -d '{"location": "Nashville", "mascot": "Predators", "division": "Central", "division_id": 2}'
curl -XPUT localhost:9200/nhl_index/teams/6 -H 'Content-Type: application/json' -d '{"location": "Las Vegas", "mascot": "Golden Knights", "division": "Pacific", "division_id": 3}'
```

## Elixir/Phoenix Setup
Before going any further, ensure you have Elixir, Node.js, and Postgres installed.

Now start the server:
  * Install dependencies with `mix deps.get` from the root of this project.
  * Create and migrate the `nhl_teams_dev` database with `mix ecto.create && mix ecto.migrate`
  * Seed the database (really just the `teams` table at this point) with `mix run priv/repo/seeds.exs`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

---

#Here's what you can do:

##Pretend you're a coach...
* Log into the site to view your divisional competition.
* Once you fill out the login form, your Elasticsearch cluster will be queried and return to you the teams from your division.
* You are NOT permitted to view the other teams -- that is, unless you log in immediately after as a coach from a different division.
* Much improvement to be done here, but hopefully you enjoy!

