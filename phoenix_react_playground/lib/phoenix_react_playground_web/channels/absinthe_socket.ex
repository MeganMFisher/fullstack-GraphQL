defmodule PhoenixReactPlaygroundWeb.AbsintheSocket do
    use Phoenix.Socket
    use Absinthe.Phoenix.Socket, schema: PhoenixReactPlaygroundWeb.Schema

    def connect(_, socket) do
      {:ok, socket}
    end

    def id(_), do: nil
end