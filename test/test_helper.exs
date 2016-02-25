ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixMailmanExample.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixMailmanExample.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixMailmanExample.Repo)

