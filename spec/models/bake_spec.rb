require 'rails_helper'

RSpec.describe Bake, type: :model do
  before do
    @bake= FactoryBot.build(:bake)
  end

  describe "バリデーション" do
    it "name, cost, warningに値があればOK" do
      expect(@bake.valid?).to eq(true)
    end

    it "nameが空だとNG" do
      @bake.name= ""
      expect(@bake.valid?).to eq(false)
    end

    it "costが空だとNG" do
      @bake.cost= ""
      expect(@bake.valid?).to eq(false)
    end

    it "warningが空だとNG" do
      @bake.warning= ""
      expect(@bake.valid?).to eq(false)
    end
  end
end
