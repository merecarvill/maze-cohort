require_relative "console_representation"
require_relative "maze"

describe "generating a console-representable maze" do

  it "handles a 1x1 maze" do
    maze = Maze.of_size(width: 1)

    output = ConsoleRepresentation.for(maze)
    expected_output = <<END
OOO
O O
OOO
END
    expect(output.to_s).to eq(expected_output)
  end

  it "handles a 1x2 maze" do
    maze = Maze.of_size(width: 2)

    output = ConsoleRepresentation.for(maze)
    expected_output = <<END
OOOOO
O O O
OOOOO
END
    expect(output.to_s).to eq(expected_output)
  end

end
