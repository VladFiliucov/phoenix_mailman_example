defmodule PhoenixMailmanExample.JobTest do
  use PhoenixMailmanExample.ModelCase

  alias PhoenixMailmanExample.Job

  @valid_attrs %{location: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Job.changeset(%Job{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Job.changeset(%Job{}, @invalid_attrs)
    refute changeset.valid?
  end
end
