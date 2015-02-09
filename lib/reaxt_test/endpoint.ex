defmodule ReaxtTest.Endpoint do
  use Phoenix.Endpoint, otp_app: :reaxt_test

  if Mix.env == :dev do 
    use Plug.Debugger
    plug WebPack.Plug.Static, at: "/", from: :reaxt_test
  else
    plug Plug.Static, at: "/", from: :reaxt_test
  end

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_reaxt_test_key",
    signing_salt: "9/1MGmZo",
    encryption_salt: "JQjNPUVV"

  plug :router, ReaxtTest.Router
end
