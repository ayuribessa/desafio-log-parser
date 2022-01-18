require_relative "parser"

file_name = 'games.log'
parser = Parser.new()
parser.open_file(file_name)
puts parser.print_first_line

