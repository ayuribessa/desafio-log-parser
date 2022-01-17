first_line = nil
File.open('./games.log') do |file| # abre o arquivo
  first_line = file.readline.chomp
end # fecha ao terminar

puts "#{first_line}"
