require 'rails_helper'
RSpec.feature "accounts/show.html.erb", type: :feature do
  feature "showについてテスト" do
    before do
      binding.pry
      @user1= FactoryBot.create(:user, :a)
      @product1= FactoryBot.create(:product, :a)
      visit account_path(@user1.id)
      sign_in @user1
    end

    scenario "@user1の情報が表示されているか" do
      expect(page).to have_content @user1.name
      expect(page).to have_content @user1.email
      expect(page).to have_content @user1.department
    end

    scenario "@user1の登録したproduct情報が表示されているか" do
      expect(page).to have_content @product1.name
      expect(page).to have_content @product1.price
      expect(page).to have_content @product1.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content @product1.updated_at.strftime('%Y/%m/%d')
    end

    scenario "@user1の登録したproduct名をclickすると各showページへ飛べるか" do
      click_link @product1.name
      expect(page).to have_current_path product_path(id: @product1.id)
    end
  end
end
