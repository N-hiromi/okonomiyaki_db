class ProductsController < ApplicationController
  before_action :autheniticate_user
  def index
    @q = Product.ransack(params[:q])
    @products = @q.result
    if @q.blank?
      @products = Product.all
    end
    @count= @products.count
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = current_user.products.new
  end
  
  def create
    @product = current_user.products.new(product_params)
    if @product.save
      redirect_to tops_path
      flash[:notice] = "登録完了"
    else
      flash[:notice] = "登録失敗"
      render action: :new
    end
  end

  def edit
    @product= Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      redirect_to tops_path
      flash[:notice] = "情報を更新しました"
    else
      flash[:notice] = "編集に失敗しました"
      render action: :edit
    end
  end

  def destroy
    @product= Product.find(params[:id]).destroy
    redirect_to account_path
    flash[:notice] = "情報を削除しました"
  end

  private
  def product_params
    params.require(:product).permit(:name, :price, :cost, :product_material_id, :description, :image, :smell, :taste, :juicy, :app, :bake_id, :cut_id, :other_technique_id, :powder_id, :liquid_id, :other_material_id, :seasoning_id, :powder_weight, :liquid_weight, :seasoning_weight, :other_material_weight).merge(user_id: current_user.id)
  end
end


