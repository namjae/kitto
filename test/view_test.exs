defmodule Kitto.ViewTest do
  use ExUnit.Case, async: true
  use Plug.Test

  test "#render(template) renders the given EEx template" do
    html = "<div class=\"layout\"><h1>Hello from kitto</h1>\n</div>\n"

    assert Kitto.View.render("sample") == html
  end

  test "#exists?(template) when the template exists, returns true" do
    assert Kitto.View.exists?("sample")
  end

  test "#exists?(template) when the template does not exist, returns false" do
    refute Kitto.View.exists?("does_not_exist")
  end
end
