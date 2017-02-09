# ExClacks

**EDIT:** Apparently I'm not as original as I thought, since
ExClacks [already exists](https://github.com/polymetis/ex_clacks).  Oh
well.  I guess I'll leave this one up for posterity's sake.

----

"A man is not dead while his name is still spoken."

Adds an `x-clacks-overhead` response header with a value of `GNU Terry
Pratchett` to any `%Plug.Conn{}` that passes through the included
`ExClacks` plug.

See [here](http://www.gnuterrypratchett.com) for more details.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be
installed by adding `ex_clacks` to your list of dependencies in
`mix.exs`:

```elixir
def deps do
  [{:ex_clacks, "~> 0.1.0"}]
end
```

## Usage

Add `plug ExClacks` in any old Plug pipeline (like a `Plug.Builder` or
`Plug.Router`); this has been tested to work in Sugar routers, and
should work in Sugar controllers and Phoenix routers/controllers/etc.

Alternately, you can call it manually with `ExClacks.call(conn, opts)`
(where `conn` is a `%Plug.Conn{}` and `opts` can be literally anything
since `ExClacks` doesn't even bother to check it).

## License

MIT.  See COPYING for details.
