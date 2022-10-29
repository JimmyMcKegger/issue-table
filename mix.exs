defmodule Issues.MixProject do
  use Mix.Project

  def project do
    [
      app: :issues,
      escript: escript_config(),
      version: "0.1.0",
      name: "Issue Table",
      source_url: "https://github.com/JimmyMcKegger/issue-table",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:httpoison, "~> 1.8"},
      {:poison, "~> 5.0"},
      {:ex_doc, "~> 0.29.0"},
      {:earmark, "~> 1.4"}
    ]
  end

  defp escript_config() do
    [
      main_module: Issues.CLI
    ]
  end
end
