defmodule ForumWeb.PageController do
  use ForumWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users(conn, _params) do
    IO.puts("users function hit!")
    users = [
      %{id: 1, name: "Yuri", email: "yuri@email.com"},
      %{id: 3, name: "Júlio", email: "julio@email.com"},
      %{id: 5, name: "Samuel", email: "samuel@email.com"},
    ]
    render(conn, :users, users: users, layout: false)
  end

  def books(conn, _params) do
    IO.puts("i am return json")
    books = [
      %{ id: 1, title: "Herry Potter e a Pedra Filosofal" },
      %{ id: 2, title: "A menina que roubava livros" },
    ]
    json(conn, %{books: books})
  end
end
