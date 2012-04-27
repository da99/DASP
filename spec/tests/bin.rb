
describe "permissions of bin/" do
  
  it "should be 750" do
    `stat -c %a bin`.strip
    .should.be == "750"
  end
  
end # === permissions of bin/

describe "DASP command STRING" do
  
  it "prints last value by default, with trailing newline" do
    BIN("split_lines uniq", :input=> %w{ a a b b }.join("\n") ).raw_out
    .should == "a\nb\n"
  end

  it "runs commands that accept arguments: strip_lines map strip STRING" do
    BIN("split_lines map strip uniq", :input=> %w{ a a b b }.join(" \n ") ).raw_out
    .should == "a\nb\n"
  end
  
end # === DASP command STRING

