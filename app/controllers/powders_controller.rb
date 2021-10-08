class PowdersController < ApplicationController
  def index
  end

  def show
    
  end

  def new
    @material_category= MaterialCategory.find(params[:material_category_id])
    @powder = @material_category.powders.new
  end

  def create
    @material_category= MaterialCategory.find(params[:material_category_id])
    @powder = @material_category.powders.new(powder_params)
    if @powder.save!
      @powder.save!
        flash[:notice] = "材料を登録しました"
        redirect_to tops_path
    else
       flash[:notice] = "登録失敗"
      render new_material_category_powder_path(material_category_id:1)
    end
  end

  def edit
    @powder= Powder.find(params[:id])
  end

  def update
    @powder= Powder.find(params[:id])
    @powder.update(powder_params)
      redirect_to tops_path
      flash[:notice] = "情報を更新しました"
    end
  end
  
  def destroy
    @powder= Powder.find(params[:id]).destroy
  end
end

private
def powder_params
  params.require(:powder).permit(:name, :cost, :description, :image, :warning,:particle_size, :density, :ssa, :material_category_id).merge(user_id: current_user.id)
end