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
    @user= User.find(params[:id])
    @products= @user.products
    @powders= @user.powders
    @liquids= @user.liquids
    @seasonings= @user.seasonings
    @other_materials= @user.other_materials
    @bakes= @user.bakes
    @cuts= @user.cuts
    @other_techniques= @user.other_techniques
  end
end
