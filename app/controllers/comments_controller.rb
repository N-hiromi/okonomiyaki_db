class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def create
    if params[:powder_id].present?
      @powder= Powder.find(params[:powder_id])
      @comment= @powder.comments.new(comment_params)
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
    params.permit(:comment).merge(user_id: current_user.id)
  end
end
