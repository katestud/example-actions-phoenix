# Actions

This project was built to demonstrate using GitHub Actions with a Phoenix app. This app is just a vanilla Phoenix app and doesn't do much... yet.

To start the Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Using the GH Actions Workflow

The workflows are defined in `.github/workflows`. There is currently one workflow, which, on a push to `master`, will
* Run the tests
* Deploy the app to heroku
* Ensure migrations are run

The workflow assumes the following:
* A heroku app has already been created, and the name matches the repo name
* The heroku app has the following buildpacks applied, before attempting to run the workflow:

```
heroku buildpacks:add hashnuke/elixir
heroku buildpacks:add https://github.com/gjaldon/heroku-buildpack-phoenix-static.git
```

See [the heroku deployment guide](https://hexdocs.pm/phoenix/heroku.html) for more info.
