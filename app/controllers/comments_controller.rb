class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def create
    binding.pry
    if params[:powder_id].present?
      @powder= Powder.find(params[:powder_id])
      @comment= @powder.comments.new(commnet_params)
      @comment.user_id= current_user.id
      if @comment.save
        flash[:notice] = "コメントしました"
        redirect_to tops_path
      else
        flash[:notice] = "コメントを入力してください"
        render action: :show
      end
    else
      flash[:notice] = "失敗したぞい"
      redirect_to tops_path
    end
  end

  def edit
  end

  def destroy
  end

  private
  def comment_params
    params.require(:bake).permit(:comment).merge(user_id: current_user.id)
  end
end
