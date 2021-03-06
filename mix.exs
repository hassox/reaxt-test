defmodule ReaxtTest.Mixfile do
  use Mix.Project

  def project do
    [app: :reaxt_test,
     version: "0.0.1",
     elixir: "~> 1.0",
     elixirc_paths: ["lib", "web"],
     compilers: [:reaxt_webpack, :phoenix] ++ Mix.compilers,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {ReaxtTest, []},
     applications: [:phoenix, :cowboy, :logger, :reaxt]]
  end

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [{:phoenix, "~> 0.8.0"},
     {:cowboy, "~> 1.0"},
     {:reaxt, "~> 0.2.2"}
    ]
  end
end
