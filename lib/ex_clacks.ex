defmodule ExClacks do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _opts) do
    conn |> put_resp_header("x-clacks-overhead", "GNU Terry Pratchett")
  end
end
