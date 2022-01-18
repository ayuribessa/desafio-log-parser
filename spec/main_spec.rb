require_relative "../lib/parser"


describe Parser do

	context " When testing the Parser classe" do
	  it " Should print an error message if user enter wrong file name or path, " do
	      parser = Parser.new()
	      expect{ parser.open_file('wrong_file.log')}.to raise_error("File not found")
	  end

     it "Should print this text in the first line " do
         parser = Parser.new()
         parser.open_file('test.log')
         first_line = parser.print_first_line
         expect(first_line).to eq("  0:00 ------------------------------------------------------------")
	  end
   end
end

