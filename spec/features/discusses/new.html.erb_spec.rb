require 'rails_helper'

RSpec.describe "discusses/show.html.erb", type: :feature do
  feature "newについてテスト" do
    let!(:user) { create(:user) }

    before do
      sign_in user
      visit new_account_discuss_path(account_id: 2)
    end

    scenario "have cuts forms and can be submitted" do
      fill_in "discuss_title", with: "Title"
      fill_in "discuss_text", with: "abcde"
      fill_in "discuss_tag", with: "abcde"
      click_on "送信"
      expect(page).to have_current_path tops_path
      expect(page).to have_content "送信しました"
    end
  end
end
