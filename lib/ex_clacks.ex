defmodule ExClacks do
  @moduledoc """
  
  `ExClacks` is just an ordinary plug that adds the
  `x-clacks-overhead` header to your `Plug.Conn`s.
  
  """
  
  import Plug.Conn

  @doc """
  
  Initializes options.  Since `ExClacks` doesn't take any options
  (more specifically, it ignores them), it'll just pass along whatever
  you provided.
  
      iex> ExClacks.init(:foo)
      :foo
  
  """
  def init(opts), do: opts

  @doc """
  
  Adds the `x-clacks-overhead` header to a `Plug.Conn`'s response
  headers.  `opts` is ignored.
  
      iex> conn = %Plug.Conn{} |> ExClacks.call(:anything_goes)
      iex> conn |> Plug.Conn.get_resp_header("x-clacks-overhead")
      ["GNU Terry Pratchett"]
  
  """
  def call(conn, _opts) do
    conn |> put_resp_header("x-clacks-overhead", "GNU Terry Pratchett")
  end
end
