require_relative "maze"

describe "A maze" do
  it "knows that a room is on the west edge" do
    maze = Maze.of_size(width: 1)
    expect(maze.on_edge?(maze.rooms.first, :west)).to eq true
  end

  it "knows that a room is not on the west edge" do
    maze = Maze.of_size(width: 2)
    expect(maze.on_edge?(maze.rooms.last, :west)).to eq false
  end

end
