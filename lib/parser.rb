class Parser

  def initialize(file_name)    
    if File.exists?(file_name)
      @f = File.open(file_name)
    else
      raise "File not found"
    end
  end

  def print_first_line
    @first_line = @f.readline.chomp
  end

  def close_file
    @f.close
  end
end
