class ProductMaterialsController < ApplicationController
  def new
    @product= Product.find(params[:product_id])
    @product_material = @product.productMaterials.new
  end

  def create
    @product= Product.find(params[:product_id])
    @product_material = @product.productMaterials.new(product_material_params)
    @count= @product.count
    if @product_material.save!
        flash[:notice] = "材料を#{@count}個登録しました"
        redirect_to tops_path
    else
       flash[:notice] = "登録失敗"
       render action: :new
    end
  end

  #def edit
   # @cut= Cut.find(params[:id])
  #end

  #def update
   # @cut= Cut.find(params[:id])
   # @cut.update(cut_params)
   #   redirect_to tops_path
   #   flash[:notice] = "情報を更新しました"
  #end
  
  #def destroy
  #  @cut= Cut.find(params[:id]).destroy
  #  redirect_to account_path
  #  flash[:notice] = "情報を削除しました"
  #end

  private
  def product_material_params
    params.require(:product_material).permit(:product_id, :powder_id, :liquid_id, :seasoning_id, :other_material_id, :powder_weight, :liquid_weight, :seasoning_weight, :other_material_weight).merge(user_id: current_user.id)
  end
end
