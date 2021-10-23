require 'rails_helper'

RSpec.describe Liquid, type: :model do
  let!(:liquid){ build(:liquid, :a)}

  describe "バリデーション" do
    it "name, cost, warningに値があればOK" do
      expect(liquid.valid?).to eq(true)
    end

    it "nameが空だとNG" do
      liquid.name= ""
      expect(liquid.valid?).to eq(false)
    end

    it "costが空だとNG" do
      liquid.cost= ""
      expect(liquid.valid?).to eq(false)
    end

    it "warningが空だとNG" do
      liquid.warning= ""
      expect(liquid.valid?).to eq(false)
    end
  end
end
