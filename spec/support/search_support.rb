module SearchSupport
  def search_name(search_word, anything)
    fill_in 'q[name_cont]', with: search_word
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end

  def search_cost(gteq, lteq, anything)
    fill_in 'q[cost_gteq]', with: gteq
    fill_in 'q[cost_lteq]', with: lteq
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end

  def search_no_user_id(search_word, anything)
    select(value = "test1", from: "q_user_id_eq") 
    find('input[name="commit"]').click
    #anythingをuserと紐付けていないため
    expect(page).to have_content "検索結果なし"
  end

  def search_user_id(search_word, anything)
    select(value = "test1", from: "q_user_id_eq") 
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end

  def search_powder_id(search_word, anything)
    select(value = "Powder1", from: "q_powder_id_eq") 
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end

  def search_liquid_id(search_word, anything)
    select(value = "Liquid1", from: "q_liquid_id_eq") 
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end

  def search_seasoning_id(search_word, anything)
    select(value = "Seasoning1", from: "q_seasoning_id_eq") 
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end

  def search_other_material_id(search_word, anything)
    select(value = "Other_material1", from: "q_other_material_id_eq") 
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end

  def search_cut_id(search_word, anything)
    select(value = "Cut1", from: "q_cut_id_eq") 
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end

  def search_bake_id(search_word, anything)
    select(value = "Bake1", from: "q_bake_id_eq") 
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end

  def search_other_technique_id(search_word, anything)
    select(value = "Other_technique1", from: "q_other_technique_id_eq") 
    find('input[name="commit"]').click
    expect(page).to have_content anything.name
  end
end
