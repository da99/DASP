
describe "permissions of bin/" do
  
  it "should be 750" do
    `stat -c %a bin`.strip
    .should.be == "750"
  end
  
end # === permissions of bin/

describe "DASP command STRING" do
  
  it "prints last value by default" do
    BIN('split_lines uniq "a\na\nb"')
    .should == "a\nb"
  end
  
end # === DASP command STRING

