class BakesController < ApplicationController
  def index
    @q = Bake.ransack(params[:q])
    @techniques = @q.result
    if @q.blank?
      @techniques = Bake.all
    end
    @count= @techniques.count
  end

  def show
    @bake = Bake.find(params[:id])
  end

  def new
    @technique_category= TechniqueCategory.find(params[:technique_category_id])
    @bake = @technique_category.bakes.new
  end

  def create
    @technique_category= TechniqueCategory.find(params[:technique_category_id])
    @bake = @technique_category.bakes.new(bake_params)
    if @bake.save
        flash[:notice] = "材料を登録しました"
        redirect_to tops_path
    else
      flash[:notice] = "登録失敗"
      redirect_to new_technique_category_bake_path(params[:technique_category_id])
    end
  end

  def edit
    @bake= Bake.find(params[:id])
  end

  def update
    @bake= Bake.find(params[:id])
    @bake.update(bake_params)
      redirect_to tops_path
      flash[:notice] = "情報を更新しました"
  end
  
  def destroy
    @bake= Bake.find(params[:id]).destroy
    redirect_to account_path
    flash[:notice] = "情報を削除しました"
  end

  private
  def bake_params
    params.require(:bake).permit(:name, :cost, :tool, :description, :image, :warning, :temp, :time, :technique_category_id).merge(user_id: current_user.id)
  end
end

