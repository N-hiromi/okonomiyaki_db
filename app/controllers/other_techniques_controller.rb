class OtherTechniquesController < ApplicationController
  before_action :autheniticate_user
  def index
    @q = OtherTechnique.ransack(params[:q])
    @techniques = @q.result
    if @q.blank?
      @techniques = OtherTechnique.all
    end
    @count = @techniques.count
  end

  def show
    @other_technique = OtherTechnique.find(params[:id])
  end

  def new
    @technique_category = TechniqueCategory.find(params[:technique_category_id])
    @other_technique = @technique_category.other_techniques.new
  end

  def create
    @technique_category = TechniqueCategory.find(params[:technique_category_id])
    @other_technique = @technique_category.other_techniques.new(other_technique_params)
    if @other_technique.save!
      flash[:notice] = "工法を登録しました"
      redirect_to tops_path
    else
      flash[:notice] = "登録失敗"
      render action: :new
    end
  end

  def edit
    @other_technique = OtherTechnique.find(params[:id])
  end

  def update
    @other_technique = OtherTechnique.find(params[:id])
    if @other_technique.update(other_technique_params)
      redirect_to tops_path
      flash[:notice] = "情報を更新しました"
    else
      flash[:notice] = "編集に失敗しました"
      render action: :edit
    end
  end

  def destroy
    @other_technique = OtherTechnique.find(params[:id]).destroy
    redirect_to account_path
    flash[:notice] = "情報を削除しました"
  end

  private

  def other_technique_params
    params.require(:other_technique).permit(:name, :cost, :tool, :description, :image, :warning, :technique_category_id).merge(user_id: current_user.id)
  end
end
