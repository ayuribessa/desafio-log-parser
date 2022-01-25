require_relative './lib/parser'
require 'optparse'

option = {}

OptionParser.new do |opts|
  opts.banner = ' Usage: main.rb [options]'
  opts.on('-n FILENAME', '--file-name FILENAME', 'Log file to parse') { |f| option[:file_name] = f }
end
file_name = option[:file_name]
parser = Parser.new(file_name)
puts parser.json_format
parser.close_file
