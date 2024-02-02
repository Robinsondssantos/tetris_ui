defmodule TetrisUiWeb.TetrisLive do
  use Phoenix.LiveView

  def mount(_params, _session, socket) do
    {
      :ok,
      assign(
        socket,
        tetromino: Tetris.Brick.new_random |> Tetris.Brick.to_string
      )
    }
  end

  def render(assigns) do
    ~H"""
    <h1>Hello</h1>
    <pre><%= @tetromino %></pre>
    """
  end
end
