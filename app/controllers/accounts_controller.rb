class AccountsController < ApplicationController
  def show
    @products= current_user.products
    @powders= current_user.powders
    @liquids= current_user.liquids
    @seasonings= current_user.seasonings
    @other_materials= current_user.otherMaterials
    @bakes= current_user.bakes
    @cuts= current_user.cuts
    @other_techniques= current_user.otherTechniques
  end
end
