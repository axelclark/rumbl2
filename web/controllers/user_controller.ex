defmodule Rumbl2.UserController do
  use Rumbl2.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Rumbl2.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(Rumbl2.User, id)
    render conn, "show.html", user: user
  end
end
