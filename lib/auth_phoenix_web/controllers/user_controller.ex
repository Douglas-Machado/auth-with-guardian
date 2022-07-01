defmodule AuthPhoenixWeb.UserController do
  use AuthPhoenixWeb, :controller

  alias AuthPhoenix.Accounts

  action_fallback AuthPhoenixWeb.FallbackController

  def register(conn, %{"user" => user_params}) do
    with {:ok, user} <- Accounts.create_user(user_params) do
      conn
      |> put_status(:created)
      |> text("User successfully registrated with email: #{user.email}")
    else
      {:error, _} ->
        conn
          |> send_resp(401, "Error")
    end
  end
end
