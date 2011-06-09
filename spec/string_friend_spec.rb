require 'spec_helper'

describe StringFriend do
#  it "Should not count itself" do
#    "nicebar".friend?("nicebar").should be true
#  end
  
  it "should not count anything with a length diff greater than one." do
    "nicebass".friend?("niceba").should be false
    "nicebass".friend?("icebas").should be false
    "nicebass".friend?("niceba").should be false
  end
  
  it "Gets the trivial cases" do
    "a".friend?("b").should be true
    "nice".friend?("nice").should be true
  end
  
  it "Can find trickier friends" do
    "wassabi".friend?("wabsabi").should be true
    "wassabi".friend?("wassaqi").should be true
    "wassabi".friend?("wassab").should be true

    "wassabi".friend?("assabi").should be true
    "wassbi".friend?("wassabi").should be true
    "wassabi".friend?("wassai").should be true
    "wussabi".friend?("wassabi").should be true
    "wassabi".friend?("wassabi").should be true
  end
  
  it "can screen pretty well" do
    "wassabi".friend?("wab").should be false
    "qbssabi".friend?("wassaqi").should be false
    "wassabi".friend?("wassanr").should be false

    "wassabi".friend?("wabyabi").should be false
    "wassabi".friend?("aassab").should be false
  end
  
  it "can screen these" do
    "xerox".friend?('causes').should be false
    "xerus".friend?('causes').should be false
    "xoana".friend?('causes').should be false
    "xylan".friend?('causes').should be false
    "xylem".friend?('causes').should be false
    "xylic".friend?('causes').should be false
    "xylol".friend?('causes').should be false
    "xylyl".friend?('causes').should be false
    "xysti".friend?('causes').should be false
    "xysts".friend?('causes').should be false
    "yabby".friend?('causes').should be false
    "yacca".friend?('causes').should be false
    "yacht".friend?('causes').should be false
    "yacks".friend?('causes').should be false
    "yaffs".friend?('causes').should be false
    "yager".friend?('causes').should be false
    "yagis".friend?('causes').should be false
    "yahoo".friend?('causes').should be false
    "yaird".friend?('causes').should be false
    "yakka".friend?('causes').should be false
    "yakow".friend?('causes').should be false
    "yales".friend?('causes').should be false
    "yamen".friend?('causes').should be false
    "yamun".friend?('causes').should be false
    "yangs".friend?('causes').should be false
    "yanks".friend?('causes').should be false
    "yapok".friend?('causes').should be false
    "yapon".friend?('causes').should be false
    "yapps".friend?('causes').should be false
    "yappy".friend?('causes').should be false
    "yards".friend?('causes').should be false
    "yarer".friend?('causes').should be false
    "yarfa".friend?('causes').should be false
    "yarns".friend?('causes').should be false
    "yarrs".friend?('causes').should be false
    "yarta".friend?('causes').should be false
    "yarto".friend?('causes').should be false
    "yates".friend?('causes').should be false
    "yatra".friend?('causes').should be false
    "yauds".friend?('causes').should be false
    "yauld".friend?('causes').should be false
    "yaups".friend?('causes').should be false
    "yawed".friend?('causes').should be false
    "yawey".friend?('causes').should be false
    "yawls".friend?('causes').should be false
    "yawns".friend?('causes').should be false
    "yawny".friend?('causes').should be false
    "yawps".friend?('causes').should be false
    "ybore".friend?('causes').should be false
    "yclad".friend?('causes').should be false
    "ycled".friend?('causes').should be false
    "ycond".friend?('causes').should be false
    "ydrad".friend?('causes').should be false
    "ydred".friend?('causes').should be false
    "yeads".friend?('causes').should be false
    "yeahs".friend?('causes').should be false
    "yealm".friend?('causes').should be false
    "yeans".friend?('causes').should be false
    "yeard".friend?('causes').should be false
    "yearn".friend?('causes').should be false
    "years".friend?('causes').should be false
    "yeast".friend?('causes').should be false
    "yecch".friend?('causes').should be false
    "yechs".friend?('causes').should be false
    "yechy".friend?('causes').should be false
    "yedes".friend?('causes').should be false
    "yeeds".friend?('causes').should be false
    "yeggs".friend?('causes').should be false
    "yelks".friend?('causes').should be false
    "yells".friend?('causes').should be false
    "yelms".friend?('causes').should be false
    "yelps".friend?('causes').should be false
    "yelts".friend?('causes').should be false
    "yenta".friend?('causes').should be false
    "yente".friend?('causes').should be false
    "yerba".friend?('causes').should be false
    "yerds".friend?('causes').should be false
    "yerks".friend?('causes').should be false
    "yeses".friend?('causes').should be false
    "yesks".friend?('causes').should be false
    "yests".friend?('causes').should be false
    "yesty".friend?('causes').should be false
    "yetis".friend?('causes').should be false
    "yetts".friend?('causes').should be false
    "yeuks".friend?('causes').should be false
    "yeuky".friend?('causes').should be false
    "yeven".friend?('causes').should be false
    "yeves".friend?('causes').should be false
    "yewen".friend?('causes').should be false
    "yexed".friend?('causes').should be false
    "yexes".friend?('causes').should be false
    "yfere".friend?('causes').should be false
    "yield".friend?('causes').should be false
    "yikes".friend?('causes').should be false
    "yills".friend?('causes').should be false
    "yince".friend?('causes').should be false
    "yipee".friend?('causes').should be false
    "yipes".friend?('causes').should be false
    "yippy".friend?('causes').should be false
    "yirds".friend?('causes').should be false
    "yirks".friend?('causes').should be false
    "yirrs".friend?('causes').should be false
    "yirth".friend?('causes').should be false
    "yites".friend?('causes').should be false
    "ylems".friend?('causes').should be false
    "ylike".friend?('causes').should be false
    "ylkes".friend?('causes').should be false
    "ymolt".friend?('causes').should be false
    "ympes".friend?('causes').should be false
  
  end
end
