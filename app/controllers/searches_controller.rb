class SearchesController < ApplicationController
  before_action :search

  def product_search
    @q = Product.ransack(params[:q])
    @product = Product.find(params[:id])
  end

  def material_search
    category= params[:material]
    if category== powder
      @q = Powder.ransack(params[:q])
      @material = Powder.find(params[:id])
    elsif category== liquid
      @q = Liquid.ransack(params[:q])
      @material = Liquid.find(params[:id])
    elsif category== seasoning
      @q = Seasoning.ransack(params[:q])
      @material = Seasoning.find(params[:id])
    else
      @q = OtherMaterial.ransack(params[:q])
      @material = OtherMaterial.find(params[:id])      
    end
  end

  def technique_search
    #@q = User.ransack(params[:q])
    #@user = User.find(params[:id])
  end

  def user_search
    #@q = User.ransack(params[:q])
    #@user = User.find(params[:id])
  end
end
