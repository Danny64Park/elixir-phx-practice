defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    users = [
      %{id: 1, name: "John Doe", email: "john@doe.com"},
      %{id: 2, name: "Jane Doe", email: "jane@doe.com"},
      %{id: 3, name: "Jim Doe", email: "jim@doe.com"}
    ]
    # render(conn, :users, users: users, layout: false)
    json(conn, %{users: users})
  end
end
