class ConsoleRepresentation
  HORIZONTAL_WALL = "OO"
  VERTICAL_WALL = "O"
  EDGE_WALL = "O"
  CENTER = " "

  def self.for(maze)
    new(maze)
  end

  def initialize(maze)
    @maze = maze
  end

  def to_s
    @maze.rooms.map do |room|
      room_display(room)
    end.transpose.map(&:join).join("\n") + "\n"
  end

  private

  def room_display(room)
    [
      top_row(room),
      center_row(room),
      bottom_row(room)
    ].map(&:join)
  end

  def top_row(room)
    row = []
    if @maze.on_edge?(room, :west)
      row << EDGE_WALL
    end
    if room.has_wall?(:north)
      row << HORIZONTAL_WALL
    end
    row
  end

  def center_row(room)
    row = []
    if @maze.on_edge?(room, :west)
      row << EDGE_WALL
    end
    row << CENTER
    if room.has_wall?(:east)
      row << VERTICAL_WALL
    end
    row
  end

  def bottom_row(room)
    row = []
    if @maze.on_edge?(room, :west)
      row << EDGE_WALL
    end
    if room.has_wall?(:south)
      row << HORIZONTAL_WALL
    end
    row
  end

end
