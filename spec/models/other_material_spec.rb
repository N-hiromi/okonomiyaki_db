require 'rails_helper'

RSpec.describe OtherMaterial, type: :model do
  let!(:other_material){ build(:other_material, :a)}

  describe "バリデーション" do
    it "name, cost, warningに値があればOK" do
      expect(other_material.valid?).to eq(true)
    end

    it "nameが空だとNG" do
      other_material.name= ""
      expect(other_material.valid?).to eq(false)
    end

    it "costが空だとNG" do
      other_material.cost= ""
      expect(other_material.valid?).to eq(false)
    end

    it "warningが空だとNG" do
      other_material.warning= ""
      expect(other_material.valid?).to eq(false)
    end
  end
end
