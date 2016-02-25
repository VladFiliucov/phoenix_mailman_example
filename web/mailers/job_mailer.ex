defmodule PhoenixMailmanExample.JobMailer do
  require EEx

  @from "info@example.com"

  EEx.function_from_file :def, :message_to_admin_text, "#{__DIR__}/job_mailer/message_to_admin.text.eex", [:assigns]
  def message_to_admin(%PhoenixMailmanExample.Job{} = job) do
    %Mailman.Email{
      subject: "New job: #{job.title} in #{job.location}",
      from: @from,
      to: [@from],
      text: message_to_admin_text(job: job)
    }
  end
end
