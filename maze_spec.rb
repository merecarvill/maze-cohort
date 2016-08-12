require_relative "console_representation"

describe "generating a console-representable maze" do

  it "handles a 1x1 maze" do
    maze = double
    output = ConsoleRepresentation.for(maze)
    expect(output).to eq("OOO\nO O\nOOO")
  end

end
