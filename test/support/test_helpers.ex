defmodule OpenmaizePhoenixBoilerplate.TestHelpers do

  alias OpenmaizePhoenixBoilerplate.{Repo, User}

  def add_user(username) do
    user = %{username: username, email: "#{username}@mail.com",
     password: "mangoes&g0oseberries"}
    %User{}
    |> User.auth_changeset(user)
    |> Repo.insert!
  end

end
