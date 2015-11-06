defmodule ExVmstats.Mixfile do
  use Mix.Project

  @version "0.0.1"

  def project do
    [app: :ex_vmstats,
     version: @version,
     elixir: "~> 1.1",
     description: "A generic lib for pushing Erlang VM stats to StatsD.",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [
      applications: [:logger],
      mod: {ExVmstats.Application, []}
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    []
  end

  defp package do
    [
      maintainers: ["Greg Narajka"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/fanduel/ex_vmstats"}
    ]
  end
end
