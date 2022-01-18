class Parser

  def open_file(file_name)    
    if File.exists?(file_name)
      File.open(file_name) do |f|
        @first_line = f.readline.chomp
      end
    else
      raise "File not found"
    end
  end

  def print_first_line()
    puts @first_line
  end

end

