defmodule ChatRoomTest do
  use ExUnit.Case, async: true

  setup do
    {:ok, room} = ChatRoom.start_link
    {:ok, client} = Client.start
  end

  test "clients can enter in a room" do

  end

  test "clients can leave a room" do
    
  end

  test "clients can send a message in a room" do

  end

end
