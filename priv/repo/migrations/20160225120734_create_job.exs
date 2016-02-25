defmodule PhoenixMailmanExample.Repo.Migrations.CreateJob do
  use Ecto.Migration

  def change do
    create table(:jobs) do
      add :title, :string
      add :location, :string

      timestamps
    end

  end
end
