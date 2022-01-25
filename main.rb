require_relative './lib/parser'
require 'optparse'

option = {}
OptionParser.new do |opts|
  opts.banner = 'Usage: main.rb [options]'
  opts.on('-n FILENAME', '--file-name FILENAME', 'Log file to parse') { |f| option[:file_name] = f }
end
parser = Parser.new(option[:file_name])
puts parser.json_format
parser.close_file
