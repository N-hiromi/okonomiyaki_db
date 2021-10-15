class AccountsController < ApplicationController
  def index
    @q = User.ransack(params[:q])
    @users = @q.result
    if @q.blank?
      @users = User.all
    end
    @count= @users.count
  end

  def show
    @user= current_user
    @products= @user.products
    @powders= @user.powders
    @liquids= @user.liquids
    @seasonings= @user.seasonings
    @other_materials= @user.otherMaterials
    @bakes= @user.bakes
    @cuts= @user.cuts
    @other_techniques= @user.otherTechniques
  end

  def other_show
    #binding.pry
    @user= User.find(params[:id])
    @products= @user.products
    @powders= @user.powders
    @liquids= @user.liquids
    @seasonings= @user.seasonings
    @other_materials= @user.otherMaterials
    @bakes= @user.bakes
    @cuts= @user.cuts
    @other_techniques= @user.otherTechniques
  end
end
