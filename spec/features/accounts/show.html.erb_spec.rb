require 'rails_helper'
RSpec.feature "accounts/show.html.erb", type: :feature do
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    let!(:bake) { create(:bake, :a, user: user) }
    let!(:cut) { create(:cut, :a, user: user) }
    let!(:other_technique) { create(:other_technique, :a, user: user) }
    let!(:powder) { create(:powder, :a, user: user) }
    let!(:liquid) { create(:liquid, :a, user: user) }
    let!(:seasoning) { create(:seasoning, :a, user: user) }
    let!(:other_material) { create(:other_material, :a, user: user) }
    let!(:product) { create(:product, :a, bake_id: bake.id, user: user) }

    before do
      sign_in user
      visit account_path(user.id)
    end

    scenario "is displayed user informations" do
      expect(page).to have_content user.name
      expect(page).to have_content user.email
      expect(page).to have_content user.department
    end

    scenario "is displayed users products" do
      expect(page).to have_content product.name
      expect(page).to have_content product.price
      expect(page).to have_content product.cost
      expect(page).to have_content product.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content product.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to products#show' do
      click_link product.name, match: :first
      expect(page).to have_current_path product_path(id: product.id)
    end

    scenario "is displayed users powders" do
      expect(page).to have_content powder.name
      expect(page).to have_content powder.cost
      expect(page).to have_content powder.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content powder.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to powders#show' do
      click_link powder.name, match: :first
      expect(page).to have_current_path powder_path(id: powder.id)
    end

    scenario "is displayed users liquids" do
      expect(page).to have_content liquid.name
      expect(page).to have_content liquid.cost
      expect(page).to have_content liquid.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content liquid.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to liquids#show' do
      click_link liquid.name, match: :first
      expect(page).to have_current_path liquid_path(id: liquid.id)
    end

    scenario "is displayed users seasonings" do
      expect(page).to have_content seasoning.name
      expect(page).to have_content seasoning.cost
      expect(page).to have_content seasoning.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content seasoning.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to seasonings#show' do
      click_link seasoning.name, match: :first
      expect(page).to have_current_path seasoning_path(id: seasoning.id)
    end

    scenario "is displayed users other_materials" do
      expect(page).to have_content other_material.name
      expect(page).to have_content other_material.cost
      expect(page).to have_content other_material.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content other_material.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to other_materials#show' do
      click_link other_material.name, match: :first
      expect(page).to have_current_path other_material_path(id: other_material.id)
    end
    
    scenario "is displayed users bakes" do
      expect(page).to have_content bake.name
      expect(page).to have_content bake.cost
      expect(page).to have_content bake.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content bake.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to bakes#show' do
      click_link bake.name, match: :first
      expect(page).to have_current_path bake_path(id: bake.id)
    end

    scenario "is displayed users cuts" do
      expect(page).to have_content cut.name
      expect(page).to have_content cut.cost
      expect(page).to have_content cut.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content cut.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to cuts#show' do
      click_link cut.name, match: :first
      expect(page).to have_current_path cut_path(id: cut.id)
    end

    scenario "is displayed users other_techniques" do
      expect(page).to have_content other_technique.name
      expect(page).to have_content other_technique.cost
      expect(page).to have_content other_technique.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content other_technique.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to other_techniques#show' do
      click_link other_technique.name, match: :first
      expect(page).to have_current_path other_technique_path(id: other_technique.id)
    end
  end
end
