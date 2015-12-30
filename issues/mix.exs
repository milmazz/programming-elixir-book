defmodule Issues.Mixfile do
  use Mix.Project

  def project do
    [app: :issues,
     version: "0.0.1",
     elixir: "~> 1.0",
     escript: escript_config,
     name: "Issues",
     source_url: "https://github.com/milmazz/issues",
     homepage_url: "https://github.com/milmazz/issues",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :httpoison, :exjsx]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      { :httpoison, "~> 0.5" },
      { :exjsx, "~> 3.1.0" },
      { :ex_doc, "~> 0.6", only: :dev}
    ]
  end

  defp escript_config do
    [ main_module: Issues.CLI ]
  end
end
