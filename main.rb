require_relative "./lib/parser"

file_name = 'games.log'
parser = Parser.new(file_name)
puts parser.print_first_line
parser.close_file

