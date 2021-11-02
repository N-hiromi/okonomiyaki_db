require 'rails_helper'

RSpec.describe "cuts/index.html.erb", type: :feature do
  include SearchSupport
  feature "indexについてテスト" do
    let!(:user) { create(:user) }
    let!(:technique_category) { create(:technique_category) }
    let!(:cut) { create(:category_cut, technique_category: technique_category) }

    before do
      sign_in user
      visit technique_category_cuts_path(technique_category_id: 1)
    end

    scenario "is displayed cuts informations" do
      expect(page).to have_content cut.name
      expect(page).to have_content cut.cost
      expect(page).to have_content cut.created_at.strftime('%Y/%m/%d')
      expect(page).to have_content cut.updated_at.strftime('%Y/%m/%d')
    end

    scenario 'can be searched cuts for name, cost, and user_id' do
      search_name("Cut3", cut)
      search_cost(9, 11, cut)
      search_no_user_id("テスト1", cut)
    end

    scenario 'have link to cuts#show' do
      click_link cut.name, match: :first
      expect(page).to have_current_path cut_path(id: cut.id)
    end

  end
end
