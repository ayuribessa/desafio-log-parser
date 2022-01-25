require_relative "../lib/parser"

describe Parser do  
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
        parser = Parser.new('test.log')
        first_line = parser.print_first_line
        expect(first_line).to eq '  0:00 ------------------------------------------------------------'
  	  end
    end
  end

  describe '#number_of_lines' do
    context "when printing the number of lines of the file" do
      it "print number of lines" do
        parser = Parser.new('test.log')
        expect(parser.number_of_lines ).to eq 1
      end
    end
  end

  describe '#format_to_object' do
      context "when formating to json " do
        it "return a json with filename and number of lines" do
          parser = Parser.new('test.log')
          expect(parser.json_format).to eq '{"test.log":{"lines":1}}'
        end
      end
    end
end
  
  