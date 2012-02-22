
describe "DASP.new" do
  
  it "sets :t" do
    DASP.new(:a).t.should == :a
  end

  it "sets :args" do
    DASP.new(:t, :cmd).args.should == [:cmd]
  end

  it "flattens :args: new(val, [:a, [:b]])" do
    DASP.new(:t, [:a, [:b]]).args
    .should == [:a, :b]
  end
  
end # === DASP.new

describe "DASP ARRAY map <method>" do
  
  it "executes method for each item in the ARRAY" do
    DASP.new([ " a ", " b ", " c "], 'strip').map
    .should == %w{ a b c }
  end
  
end # === DASP ARRAY map <method>

describe "DASP ARRAY contains word INPUT" do
  
  it "selects elements that contain <word>" do
    DASP.new( %w{ STR_a STR_b NO_c }, 'STR').contains
    .should == %w{ STR_a STR_b }
  end
  
end # === DASP <to array> contains word INPUT

describe "DASP ARRAY index INTEGER INPUT" do
  
  it "selects nth element of array" do
    DASP.new( %w{ a b c }, '1').index
    .should == 'b'
  end
  
end # === DASP ARRAY index INTERGER INPUT

describe "DASP ARRAY line INTEGER INPUT" do
  
  it "selects nth-1 element of array" do
    DASP.new( %w{ a b c d e f }, '3').line
    .should == 'c'
  end
  
end # === DASP ARRAY line INTEGER INPUT

