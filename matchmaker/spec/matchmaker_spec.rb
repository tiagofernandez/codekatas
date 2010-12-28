require "matchmaker"

describe MatchMaker do
  
  before :all do
    @matchmaker = MatchMaker.new
    @members = [
      "BETTY F M A A C C",
      "TOM M F A D C A",
      "SUE F M D D D D",
      "ELLEN F M A A C A",
      "JOE M F A A C A",
      "ED M F A D D A",
      "SALLY F M C D A B",
      "MARGE F M A A C C"
    ]
  end
  
  it "should get best matches" do
    @matchmaker.get_best_matches(@members, 'BETTY', 2).should == ['JOE', 'TOM']
    @matchmaker.get_best_matches(@members, 'JOE', 1).should == ['ELLEN', 'BETTY', 'MARGE']
    @matchmaker.get_best_matches(@members, 'MARGE', 4).should == []
  end

end