class CommentsController < ApplicationController
  before_action :autheniticate_user
  def create
    if params[:powder_id].present?
      @powder= Powder.find(params[:powder_id])
      @comment= @powder.comments.new(comment_params)
      @comment.user_id= current_user.id
    elsif params[:liquid_id].present?
      @liquid= Liquid.find(params[:liquid_id])
      @comment= @liquid.comments.new(comment_params)
      @comment.user_id= current_user.id
    elsif params[:seasoning_id].present?
      @seasoning= Seasoning.find(params[:seasoning_id])
      @comment= @seasoning.comments.new(comment_params)
      @comment.user_id= current_user.id
    elsif params[:other_material_id].present?
      @other_material= OtherMaterial.find(params[:other_material_id])
      @comment= @other_material.comments.new(comment_params)
      @comment.user_id= current_user.id
    elsif params[:cut_id].present?
      @cut= Cut.find(params[:cut_id])
      @comment= @cut.comments.new(comment_params)
      @comment.user_id= current_user.id
    elsif params[:bake_id].present?
      @bake= Bake.find(params[:bake_id])
      @comment= @bake.comments.new(comment_params)
      @comment.user_id= current_user.id
    elsif params[:other_technique_id].present?
      @other_technique= OtherTechnique.find(params[:other_technique_id])
      @comment= @other_technique.comments.new(comment_params)
      @comment.user_id= current_user.id
    elsif params[:discuss_id].present?
      @discuss= Discuss.find(params[:discuss_id])
      @comment= @discuss.comments.new(comment_params)
      @comment.user_id= current_user.id
    else
      @product= Product.find(params[:product_id])
      @comment= @product.comments.new(comment_params)
      @comment.user_id= current_user.id
    end
    if @comment.save
      flash[:notice] = "コメントしました"
      redirect_to tops_path
    else
      flash[:notice] = "コメントを入力してください"
      render action: :show
    end
  end

  def destroy
    @comment= Comment.find(params[:id]).destroy
    redirect_to tops_path
    flash[:notice] = "コメントを削除しました"
  end

  private
  def comment_params
    params.permit(:comment).merge(user_id: current_user.id)
  end
end
