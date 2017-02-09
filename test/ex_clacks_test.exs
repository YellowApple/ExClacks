defmodule ExClacksTest do
  use ExUnit.Case
  use Plug.Test
  doctest ExClacks

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "actually adds the header" do
    conn = conn(:get, "/") |> ExClacks.call([])
    assert get_resp_header(conn, "x-clacks-overhead") ==
      ["GNU Terry Pratchett"]
  end
end
