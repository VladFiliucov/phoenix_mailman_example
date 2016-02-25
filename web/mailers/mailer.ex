defmodule PhoenixMailmanExample.Mailer do
  def deliver(%Mailman.Email{} = email) do
    Mailman.deliver(email, config(Mix.env))
  end

  def config(:dev) do
    %Mailman.Context{
      config: %Mailman.FileConfig{}
    }
  end

  def config(:test) do
    %Mailman.Context{
      config: %Mailman.TestConfig{}
    }
  end

  def config(:prod) do
    %Mailman.Context{
      config: %Mailman.SmtpConfig{
        username: "user",
        password: "secret",
        relay: "smtp.mailgun.org",
        port: 587,
        tls: :always,
        auth: :always
      }
    }
  end
end
