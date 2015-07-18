defmodule ChatRoom do
  @moduledoc """
  A chat room.

  ## API reference:
      enter(name)
      leave(name)
      message(name, message)
  """


  @doc """
  Start the chat server process.
  """
  def start_link() do
    PubSub.start_link()
  end

  @doc """
  Enter in a room.
  """
  def enter(guest_pid, room_name) do
    PubSub.subscribe(guest_pid, room_name)
  end

  @doc """
  Leave a room.
  """
  def leave(guest_pid, room_name) do
    PubSub.unsubscribe(guest_pid, room_name)
  end

  @doc """
  Send a message in a room.
  """
  def message(room_name, message) do
    PubSub.publish(room_name, message)
  end

end
