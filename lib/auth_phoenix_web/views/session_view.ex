defmodule AuthPhoenixWeb.SessionView do
  use AuthPhoenixWeb, :view

  def render("token.json", %{access_token: access_token}) do
    %{access_token: access_token}
  end
end
