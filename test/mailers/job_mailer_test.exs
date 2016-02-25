defmodule PhoenixMailmanExample.JobMailerTest do
  use PhoenixMailmanExample.MailerCase
  alias PhoenixMailmanExample.JobMailer

  @job Factory.build(:job, id: 1) # id for url generation

  test "#message_to_admin" do
    email = JobMailer.message_to_admin(@job)
    assert email.from == "info@example.com"
    assert email.to == ["info@example.com"]
    assert email.subject =~ "New job:"
    assert email.text =~ @job.title
  end
end
