defmodule AuthPhoenix.Guardian.AuthPipeline do
  @claims %{typ: "access"}

  use Guardian.Plug.Pipeline,
    otp_app: :auth_phoenix,
    module: AuthPhoenix.Guardian,
    error_handler: AuthPhoenix.Guardian.AuthErrorHandler

  plug(Guardian.Plug.VerifySession, claims: @claims)
  plug(Guardian.Plug.VerifyHeader, claims: @claims, scheme: "Bearer")
  plug(Guardian.Plug.LoadResource, ensure: true)
end
