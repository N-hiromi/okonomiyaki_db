require 'rails_helper'

RSpec.describe "products/index.html.erb", type: :feature do
  include SearchSupport
  feature "indexについてテスト" do
    let!(:user) { create(:user) }
    let!(:powder) { create(:powder, :a, user: user) }
    let!(:liquid) { create(:liquid, :a, user: user) }
    let!(:seasoning) { create(:seasoning, :a, user: user) }
    let!(:other_material) { create(:other_material, :a, user: user) }
    let!(:cut) { create(:cut, :a, user: user) }
    let!(:bake) { create(:bake, :a, user: user) }
    let!(:other_technique) { create(:other_technique, :a, user: user) }
    let!(:product) { create(:product_anything) }

    before do
      sign_in user
      visit products_path
    end

    scenario "is displayed products informations" do
      expect(page).to have_content product.name
      expect(page).to have_content product.cost
      expect(page).to have_content product.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content product.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'can be searched products for name, cost, user_id, materials, and techniques' do
      search_name("Pro", product)
      search_cost(10, 21, product)
      search_user_id("Product1", product)
      search_powder_id("Powder1", product)
      search_liquid_id("Liquid1", product)
      search_seasoning_id("Seasoning1", product)
      search_other_material_id("Other_material1", product)
      search_bake_id("Bake1", product)
      search_cut_id("Cut1", product)
      search_other_technique_id("Other_technique1", product)
    end

    scenario 'have link to products#show' do
      click_link product.name, match: :first
      expect(page).to have_current_path product_path(id: product.id)
    end
  end
  
end
