class Parser

  def initialize(file_name)    
    File.exists?(file_name)
    @file = File.open(file_name)
  end

  def print_first_line
    @file.readline.chomp
  end

  def close_file
    @file.close
  end
end
