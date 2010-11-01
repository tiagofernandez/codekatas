require "matchmaker"

describe MatchMaker do
  
  before :all do
    @matchmaker = MatchMaker.new
  end
  
  it "should get best matches" do
    @matchmaker.get_best_matches([], '', -1).should == []
  end

end