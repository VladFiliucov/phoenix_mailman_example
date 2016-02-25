defmodule PhoenixMailmanExample.MailerCase do
  @moduledoc """
  This module defines the test case to be used by
  mailer tests.

  """

  use ExUnit.CaseTemplate

  using do
    quote do
      alias PhoenixMailmanExample.Factory

      import PhoenixMailmanExample.MailerCase
    end
  end
end
