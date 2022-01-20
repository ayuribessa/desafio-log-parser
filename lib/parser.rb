require 'json'

class Parser

  def initialize(file_name)    
    @file_name = file_name
    File.exists?(@file_name)
    @file = File.open(@file_name)

  end

  def print_first_line
    @file.readline.chomp
  end

  def close_file
    @file.close
  end

  def number_of_lines
    @lines = @file.count 
  end

  def json_format
    number_of_lines()
    object = { "#{@file_name}" => {"lines" => @lines } }
    json = object.to_json
    # json = JSON.pretty_generate(object)
    return json
  end
end

