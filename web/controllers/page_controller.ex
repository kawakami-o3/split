defmodule Split.PageController do
  use Split.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
