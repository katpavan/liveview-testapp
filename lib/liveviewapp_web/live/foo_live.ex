defmodule LiveviewappWeb.FooLive do
  use LiveviewappWeb, :live_view
  require Logger


  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, msg: "this is a message", results: %{})}
  end

  def render(assigns) do
	~L"""
	<div id="test" phx-keydown="keydown" tabindex="0">
	<h1>Hello</h1>
	<%= @msg %>
	</div>  	
	"""
  end

  def handle_event("keydown", %{"key" => key}, socket) do
  	Logger.debug "Var value: #{inspect(key)}"
  	{:noreply, assign(socket, msg: key)}
  end
end
