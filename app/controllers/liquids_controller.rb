class LiquidsController < ApplicationController
  before_action :autheniticate_user
  def index
    @q = Liquid.ransack(params[:q])
    @materials = @q.result
    if @q.blank?
      @materials = Liquid.all
    end
    @count = @materials.count
  end

  def show
    @liquid = Liquid.find(params[:id])
  end

  def new
    @material_category = MaterialCategory.find(params[:material_category_id])
    @liquid = @material_category.liquids.new
  end

  def create
    @material_category = MaterialCategory.find(params[:material_category_id])
    @liquid = @material_category.liquids.new(liquid_params)
    if @liquid.save
      flash[:notice] = "材料を登録しました"
      redirect_to tops_path
    else
      flash[:notice] = "登録失敗"
      render action: :new
    end
  end

  def edit
    @liquid = Liquid.find(params[:id])
  end

  def update
    @liquid = Liquid.find(params[:id])
    if @liquid.update(liquid_params)
      redirect_to tops_path
      flash[:notice] = "情報を更新しました"
    else
      flash[:notice] = "編集に失敗しました"
      render action: :edit
    end
  end

  def destroy
    @liquid = Liquid.find(params[:id]).destroy
    redirect_to account_path
    flash[:notice] = "情報を削除しました"
  end

  private

  def liquid_params
    params.require(:liquid).permit(:name, :cost, :description, :image, :warning, :density, :viscosity, :material_category_id).merge(user_id: current_user.id)
  end
end
