require 'json'

class Parser

  def initialize(file_name)    
    @file_name = file_name
    File.exist?(@file_name)
    @file = File.open(@file_name)
  end

  def print_first_line
    @file.readline.chomp
  end

  def close_file
    @file.close
  end

  def number_of_lines
    @file.count 
  end

  def json_format
    object = { "#{@file_name}" => { 'lines' => number_of_lines } }
    object.to_json
  end
end
