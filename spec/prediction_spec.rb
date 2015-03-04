require_relative '../lib/prediction'

describe "Prediction" do

  describe "::email" do

    it "should predict ironthrone.com emails with FIRSTNAME.LASTNAME patterns" do
      expect( Prediction.email("Tywinn", "Lannister", "ironthrone.com")).to eq("tywinn.lannister@ironthrone.com")
    end

    it "should match direwolves.com emails to FIRSTNAME.LASTINITIAL patterns" do
      expect( Prediction.email("Robb", "Stark", "direwolves.com")).to eq("robb.s@direwolves.com")
    end

    it "should match littlefinger.com emails to FIRSTINITIAL.LASTINITIAL patterns" do
      expect( Prediction.email("Petyr", "Baelish", "littlefinger.com")).to eq("p.b@littlefinger.com")
    end

  end

end
