defmodule Mailman.FileConfig do
  @moduledoc "Config struct for the file adapter"

  defstruct store_deliveries: true
end

defimpl Mailman.Adapter, for: Mailman.FileConfig do
  def deliver(_config, email, _message) do
    get_tmp_dir
    |> save_email_to_file(email)
    |> open_email_in_browser
  end

  defp get_tmp_dir do
    new_dir = "#{System.tmp_dir}mailman_files/#{current_timestamp_string}/"
    File.mkdir_p(new_dir)
    new_dir
  end

  defp save_email_to_file(dir, email) do
    File.write(dir <> "index.html", render_template(email))
    dir
  end

  defp open_email_in_browser(dir) do
    System.cmd("open", ["#{dir}index.html"])
  end

  defp render_template(email) do
     EEx.eval_file("#{__DIR__}/file_template.eex", assigns: [email: email, encoding: "utf-8"])
  end

  defp current_timestamp_string do
    :os.system_time(:micro_seconds) |> Integer.to_string
  end
end
