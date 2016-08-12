require_relative "room"

class Maze
  def initialize(width:)
    @width = width
  end

  def self.of_size(width:)
    new(width: width)
  end

  def rooms
    @rooms ||= (1..@width).map { Room.new }
  end

  def on_edge?(room, direction)
    rooms.first == room
  end
end
