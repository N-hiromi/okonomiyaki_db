class ProductMaterialsController < ApplicationController
  def new
    @form = Form::ProductMaterialCollection.new
    @product= Product.find(params[:product_id])
  end

  def create
    @form = Form::ProductMaterialCollection.new(product_material_collection_params)
    @form.product_id= params[:product_id]
    @form.save!
      redirect_to products_path, notice: "商品を登録しました"
    #else
    #  flash.now[:alert] = "商品登録に失敗しました"
    #  render :new
    #end
    #@product= Product.find(params[:product_id])
    #@product_material = @product.productMaterials.new(product_material_params)
    #@count= @product.count
    #if @product_material.save!
    #    flash[:notice] = "材料を#{@count}個登録しました"
    #    redirect_to tops_path
    #else
    #   flash[:notice] = "登録失敗"
    #   render action: :new
    #end
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
  
  private
  def product_material_collection_params
    params.require(:form_product_material_collection).permit(product_materials_attributes: [:powder_id, :powder_weight])
  end
end
