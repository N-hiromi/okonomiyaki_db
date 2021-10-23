require 'rails_helper'

RSpec.describe Seasoning, type: :model do
  let!(:seasoning){ build(:seasoning, :a)}

  describe "バリデーション" do
    it "name, cost, warningに値があればOK" do
      expect(seasoning.valid?).to eq(true)
    end

    it "nameが空だとNG" do
      seasoning.name= ""
      expect(seasoning.valid?).to eq(false)
    end

    it "costが空だとNG" do
      seasoning.cost= ""
      expect(seasoning.valid?).to eq(false)
    end

    it "warningが空だとNG" do
      seasoning.warning= ""
      expect(seasoning.valid?).to eq(false)
    end
  end
end
