
describe "permissions of bin/" do
  
  it "should be 750" do
    `stat -c %a bin`.strip
    .should.be == "750"
  end
  
end # === permissions of bin/

describe "DASP command STRING" do
  
  it "prints last value by default, with trailing newline" do
    # Exit_Zero("cat ~/.bash_history | bundle exec DASP split_lines uniq ")
    BIN("split_lines uniq", :input=> %w{ a a b b }.join("\n") ).out
    .should == "a\nb\n"
  end
  
end # === DASP command STRING

