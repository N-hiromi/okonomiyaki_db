require 'rails_helper'

RSpec.describe Powder, type: :model do
  let!(:powder){ build(:powder, :a)}

  describe "バリデーション" do
    it "name, cost, warningに値があればOK" do
      expect(powder.valid?).to eq(true)
    end

    it "nameが空だとNG" do
      powder.name= ""
      expect(powder.valid?).to eq(false)
    end

    it "costが空だとNG" do
      powder.cost= ""
      expect(powder.valid?).to eq(false)
    end

    it "warningが空だとNG" do
      powder.warning= ""
      expect(powder.valid?).to eq(false)
    end
  end
end
