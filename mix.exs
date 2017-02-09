defmodule ExClacks.Mixfile do
  use Mix.Project

  def project do
    [app:             :ex_clacks,
     version:         "0.1.0",
     elixir:          "~> 1.4",
     name:            "ExClacks",
     source_url:      "https://github.com/YellowApple/ExClacks",
     build_embedded:  Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps:            deps(),
     package:         package(),
     description:     description()]
  end

  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: []]
  end

  defp deps do
    [{:plug,   "~> 1.0"},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp description do
    """
    A man is not dead while his name is still spoken.
    """
  end

  defp package do
    %{maintainers: ["Ryan S. Northrup"],
      files:       ["lib/ex_clacks.ex",
                    "mix.exs",
                    "README.md",
                    "COPYING"],
      licenses:    ["MIT"],
      links:       %{"GitHub" => "https://github.com/YellowApple/ExClacks"}}
  end
end
