require_relative './bowling'

describe 'Bowling scoring' do

    context 'strikes' do
      it "10 strikes should scores 300" do
        expect(score_for("XXXXXXXXXX")).to eq 300
      end
      it "9 strikes should scores 270" do
        expect(score_for("XXXXXXXXX--")).to eq 300
      end
      it "8 strikes should scores 240" do
        expect(score_for("XXXXXXXX----")).to eq 240
      end
      it "7 strikes should scores 210" do
        expect(score_for("XXXXXXX------")).to eq 210
      end
      it "0 strikes should scores 0" do
        expect(score_for("--------------------")).to eq 0
      end
    end

    context "spares" do
      it "10 spares should scores 150" do
        expect(score_for("1/1/1/1/1/1/1/1/1/1/")).to eq 150
      end
      it "9  spares should scores 135" do
        expect(score_for("1/1/1/1/1/1/1/1/1/--")).to eq 135
      end
      it "8  spares should scores 120" do
        expect(score_for("1/1/1/1/1/1/1/1/----")).to eq 120
      end
      it "5  spares should scores 75" do
        expect(score_for("1/1/1/1/1/----------")).to eq 75
      end
      it "1  spare  should scores 15" do
        expect(score_for("1/------------------")).to eq 15
      end
      it "0  spare  should scores 0" do
        expect(score_for("--------------------")).to eq 0
      end
    end

    context "other scores" do
      it "9 strikes and 1 spare  should scores 285" do
        expect(score_for("XXXXXXXXX1/")).to eq 285
      end
      it "8 strikes and 2 spares should scores 270" do
        expect(score_for("XXXXXXXX1/1/")).to eq 270
      end
      it "7 strikes and 3 spares should scores 255" do
        expect(score_for("XXXXXXX1/1/1/")).to eq 255
      end
      it "1 strike  and 9 spares should scores 165" do
        expect(score_for("X1/1/1/1/1/1/1/1/1/")).to eq 165
      end
      it "8 strikes, 1 spare and 2 misses should scores 255" do
        expect(score_for("XXXXXXXX1/--")).to eq 255
      end
      it "8 strikes, 1 spare, 2 and 6 should scores 263" do
        expect(score_for("XXXXXXXX1/26")).to eq 263
      end
      it "7 strikes, 1 spare, 2 and 6 and 2 misses should score 235" do
        expect(score_for("XXXXXXX1/26--")).to eq 233
      end
      it "6 and 2 and misses scores 8" do
        expect(score_for("62------------------")).to eq 8
      end
      it "just misses scores 0" do
        expect(score_for("--------------------")).to eq 0
      end
      it "hit 8 and misses scores 8" do
        expect(score_for("8-------------------")).to eq 8
      end
      it "a miss and spare and misses scores 15" do
        expect(score_for("-/------------------")).to eq 15
      end
      it "1 strike, 1 spare, 6 and 2 scores 53" do
        expect(score_for("X--6/62------------")).to eq 53
      end
    end
    
end