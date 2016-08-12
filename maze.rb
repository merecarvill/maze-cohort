require_relative "console_representation"

maze = <<END
inner north
.OO
.

inner east
. O
. O

two inner walls
.OO
.
. O
. O
END

puts ConsoleRepresentation.for(nil)
