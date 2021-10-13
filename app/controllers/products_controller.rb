class ProductsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end
  
  def create
  end

  def edit
  end

  def destroy
    @product= Product.find(params[:id]).destroy
    redirect_to account_path
    flash[:notice] = "情報を削除しました"
  end
end


