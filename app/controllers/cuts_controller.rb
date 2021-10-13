class CutsController < ApplicationController
  def index
    @q = Cut.ransack(params[:q])
    @techniques = @q.result
    if @q.blank?
      @techniques = Cut.all
    end
    @count= @techniques.count
  end

  def show
    @cut = Cut.find(params[:id])
  end

  def new
    @technique_category= TechniqueCategory.find(params[:technique_category_id])
    @cut = @technique_category.cuts.new
  end

  def create
    @technique_category= TechniqueCategory.find(params[:technique_category_id])
    @cut = @technique_category.cuts.new(cut_params)
    if @cut.save!
        flash[:notice] = "材料を登録しました"
        redirect_to tops_path
    else
       flash[:notice] = "登録失敗"
      render new_technique_category_cut_path(technique_category_id:1)
    end
  end

  def edit
    @cut= Cut.find(params[:id])
  end

  def update
    @cut= Cut.find(params[:id])
    @cut.update(cut_params)
      redirect_to tops_path
      flash[:notice] = "情報を更新しました"
  end
  
  def destroy
    @cut= Cut.find(params[:id]).destroy
    redirect_to account_path
    flash[:notice] = "情報を削除しました"
  end

  private
  def cut_params
    params.require(:cut).permit(:name, :cost, :tool, :description, :image, :warning, :width, :height, :technique_category_id).merge(user_id: current_user.id)
  end
end

