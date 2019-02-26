defmodule WhatIsApp.Router do
  use WhatIsApp.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", WhatIsApp do
    pipe_through :api
  end
end
