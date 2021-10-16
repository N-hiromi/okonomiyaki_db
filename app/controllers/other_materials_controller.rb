class other_materialssController < ApplicationController
  def index
    @q = OtherMaterial.ransack(params[:q])
    @materials = @q.result
    if @q.blank?
      @materials = OtherMaterial.all
    end
    @count= @materials.count
  end

  def show
    @other_material = OtherMaterial.find(params[:id])
  end

  def new
    @material_category= MaterialCategory.find(params[:material_category_id])
    @other_material = @material_category.other_materials.new
  end

  def create
    @material_category= MaterialCategory.find(params[:material_category_id])
    @other_material = @material_category.other_materials.new(other_material_params)
    if @other_material.save!
        flash[:notice] = "材料を登録しました"
        redirect_to tops_path
    else
      flash[:notice] = "登録失敗"
      render action: :new
    end
  end

  def edit
    @other_material= OtherMaterial.find(params[:id])
  end

  def update
    @other_material= OtherMaterial.find(params[:id])
    if @other_material.update(other_material_params)
      redirect_to tops_path
      flash[:notice] = "情報を更新しました"
    else
      flash[:notice] = "編集に失敗しました"
      render action: :edit
    end
  end
  
  def destroy
    @other_material= OtherMaterial.find(params[:id]).destroy
    redirect_to account_path
    flash[:notice] = "情報を削除しました"
  end

  private
  def other_material_params
    params.require(:other_material).permit(:name, :cost, :description, :image, :warning, :material_category_id).merge(user_id: current_user.id)
  end
end


