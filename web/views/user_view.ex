defmodule Rest.UserView do
  use Rest.Web, :view

  def render("index.json", %{users: users}) do
    %{data: render_many(users, Rest.UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, Rest.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      username: user.username,
      password: user.password,
      age: user.age}
  end
end
