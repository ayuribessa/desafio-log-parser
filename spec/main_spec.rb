require_relative "../lib/parser"

describe '#open_file' do
  context " When loaded wrong file name or path " do
	  it "Print an error message " do
      expect{ Parser.new('wrong_file.log')}.to raise_error(Errno::ENOENT)
    end
  end
end
  
describe '#print_first_line' do
  context "when priting the first line of the file" do
    it "Print this text " do
      parser = Parser.new('games.log')
      first_line = parser.print_first_line
      expect(first_line).to eq("  0:00 ------------------------------------------------------------")
	  end
  end
end

