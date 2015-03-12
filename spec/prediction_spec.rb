require_relative '../lib/prediction'

describe "Prediction" do

  describe "::email" do

    it "should predict ironthrone.com emails with FIRSTNAME.LASTNAME patterns" do
      expect( Prediction.new("Tywinn", "Lannister", "ironthrone.com").email).to eq("tywinn.lannister@ironthrone.com")
    end

    it "should match direwolves.com emails to FIRSTNAME.LASTINITIAL patterns" do
      expect( Prediction.new("Robb", "Stark", "direwolves.com").email).to eq("robb.s@direwolves.com")
    end

    it "should match littlefinger.com emails to FIRSTINITIAL.LASTINITIAL patterns" do
      expect( Prediction.new("Petyr", "Baelish", "littlefinger.com").email).to eq("p.b@littlefinger.com")
    end

    it "should match unknown domains to all possible patterns" do
      expect( Prediction.new("Bob", "Ross", "bobross.com").email ).to eq(["bob.ross@bobross.com","bob.r@bobross.com", "b.ross@bobross.com", "b.r@bobross.com"])
    end
  end

end
