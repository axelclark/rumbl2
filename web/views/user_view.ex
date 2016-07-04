defmodule Rumbl2.UserView do
  use Rumbl2.Web, :view
  alias Rumbl2.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
