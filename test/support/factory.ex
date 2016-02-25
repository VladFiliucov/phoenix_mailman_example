defmodule PhoenixMailmanExample.Factory do
  use ExMachina.Ecto, repo: PhoenixMailmanExample.Repo

  def factory(:job) do
    %PhoenixMailmanExample.Job{
      title: "Elixir Ninja",
      location: "remote"
    }
  end
end
