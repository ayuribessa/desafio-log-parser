require_relative "../lib/parser"

describe '#open_file' do

	context " When loaded wrong file name or path " do
	  it "Print an error message " do
	      parser = Parser.new()
	      expect{ parser.open_file('wrong_file.log')}.to raise_error("File not found")
	  end

  end
  
describe '#print_first_line' do
  context "when priting the first line of the file" do

    it "Print this text " do
        parser = Parser.new()
        parser.open_file('games.log')
        first_line = parser.print_first_line
        expect(first_line).to eq("  0:00 ------------------------------------------------------------")
	  end
   end
end

