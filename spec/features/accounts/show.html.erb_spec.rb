require 'rails_helper'
RSpec.feature "accounts/show.html.erb", type: :feature do
  #binding.pry
  feature "showについてテスト" do
    let!(:user) { create(:user) }
    let!(:bake) { create(:bake, :a, user: user) }
    let!(:cut) { create(:cut, :a, user: user) }
    let!(:other_technique) { create(:other_technique, :a, user: user) }
    let!(:powder) { create(:powder, :a, user: user) }
    let!(:liquid) { create(:liquid, :a, user: user) }
    let!(:seasoning) { create(:seasoning, :a, user: user) }
    let!(:other_material) { create(:other_material, :a, user: user) }
    let!(:product) { create(:product, :a, bake_id: bake.id, user_id: user.id, user: user) }

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
      expect(page).to have_content product.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content product.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'have link to products#show' do
      click_link product.name, match: :first
      expect(page).to have_link product.name, href: product_path(id: product.id)
      #expect(page).to have_current_path product_path(id: product.id)
    end
  end
end
