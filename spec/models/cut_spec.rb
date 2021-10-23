require 'rails_helper'

RSpec.describe Cut, type: :model do
  let!(:cut){ build(:cut, :a)}

  describe "バリデーション" do
    it "name, cost, warningに値があればOK" do
      expect(cut.valid?).to eq(true)
    end

    it "nameが空だとNG" do
      cut.name= ""
      expect(cut.valid?).to eq(false)
    end

    it "costが空だとNG" do
      cut.cost= ""
      expect(cut.valid?).to eq(false)
    end

    it "warningが空だとNG" do
      cut.warning= ""
      expect(cut.valid?).to eq(false)
    end
  end
end
