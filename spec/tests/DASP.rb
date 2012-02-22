
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

