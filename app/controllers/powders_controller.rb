class PowdersController < ApplicationController
  def index
    @q = Powder.ransack(params[:q])
    @materials = @q.result
    if @q.blank?
      @materials = Powder.all
    end
    @count= @materials.count
  end

  def show
    @powder = Powder.find(params[:id])
  end

  def new
    @material_category= MaterialCategory.find(params[:material_category_id])
    @powder = @material_category.powders.new
  end

  def create
    @material_category= MaterialCategory.find(params[:material_category_id])
    @powder = @material_category.powders.new(powder_params)
    if @powder.save
        flash[:notice] = "材料を登録しました"
        redirect_to tops_path
    else
      flash[:notice] = "登録失敗"
      render action: :new
    end
  end

  def edit
    @powder= Powder.find(params[:id])
  end

  def update
    @powder= Powder.find(params[:id])
    if @powder.update(powder_params)
      redirect_to tops_path
      flash[:notice] = "情報を更新しました"
    else
      flash[:notice] = "編集に失敗しました"
      render action: :edit
    end
  end
  
  def destroy
    @powder= Powder.find(params[:id]).destroy
    redirect_to account_path
    flash[:notice] = "情報を削除しました"
  end

  private
  def powder_params
    params.require(:powder).permit(:name, :cost, :description, :image, :warning,:particle_size, :density, :ssa, :material_category_id).merge(user_id: current_user.id)
  end
end

