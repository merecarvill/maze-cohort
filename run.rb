require_relative "maze"
require_relative "console_representation"

maze = Maze.of_size(width: 5)
puts ConsoleRepresentation.for(maze).to_s
