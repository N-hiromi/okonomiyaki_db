class SeasoningsController < ApplicationController
  def index
    @q = Seasoning.ransack(params[:q])
    @materials = @q.result
    if @q.blank?
      @materials = Seasoning.all
    end
    @count= @materials.count
  end

  def show
    @seasoning = Seasoning.find(params[:id])
  end

  def new
    @material_category= MaterialCategory.find(params[:material_category_id])
    @seasoning = @material_category.seasonings.new
  end

  def create
    @material_category= MaterialCategory.find(params[:material_category_id])
    @seasoning = @material_category.seasonings.new(seasoning_params)
    if @seasoning.save!
        flash[:notice] = "材料を登録しました"
        redirect_to tops_path
    else
       flash[:notice] = "登録失敗"
      render new_material_category_seasoning_path(material_category_id:1)
    end
  end

  def edit
    @seasoning= Seasoning.find(params[:id])
  end

  def update
    @seasoning= Seasoning.find(params[:id])
    @seasoning.update(seasoning_params)
      redirect_to tops_path
      flash[:notice] = "情報を更新しました"
  end
  
  def destroy
    @seasoning= Seasoning.find(params[:id]).destroy
    redirect_to account_path
    flash[:notice] = "情報を削除しました"
  end

  private
  def seasoning_params
    params.require(:seasoning).permit(:name, :cost, :description, :image, :warning, :material_category_id).merge(user_id: current_user.id)
  end
end

