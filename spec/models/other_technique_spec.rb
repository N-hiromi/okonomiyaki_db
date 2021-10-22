require 'rails_helper'

RSpec.describe OtherTechnique, type: :model do
  before do
    @other_technique= FactoryBot.build(:other_technique)
  end

  describe "バリデーション" do
    it "name, cost, warningに値があればOK" do
      expect(@other_technique.valid?).to eq(true)
    end

    it "nameが空だとNG" do
      @other_technique.name= ""
      expect(@other_technique.valid?).to eq(false)
    end

    it "costが空だとNG" do
      @other_technique.cost= ""
      expect(@other_technique.valid?).to eq(false)
    end

    it "warningが空だとNG" do
      @other_technique.warning= ""
      expect(@other_technique.valid?).to eq(false)
    end
  end
end
