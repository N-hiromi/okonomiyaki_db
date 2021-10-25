class DiscussesController < ApplicationController
  before_action :autheniticate_user
  def show
    @discuss = Discuss.find(params[:id])
  end

  def new
    @discuss = Discuss.new
  end

  def create
    @discuss = Discuss.new(discuss_params)
    if @discuss.save
      redirect_to tops_path
      flash[:notice] = "送信しました"
    else
      flash[:notice] = "送信に失敗しました"
      render action: :new
    end
  end

  def edit
    @discuss = Discuss.find(params[:id])
    if @discuss.update(discuss_params)
      redirect_to tops_path
      flash[:notice] = "更新しました"
    else
      flash[:notice] = "編集に失敗しました"
      render action: :edit
    end
  end

  def destroy
    @discuss = Discuss.find(params[:id]).destroy
    redirect_to tops_path
    flash[:notice] = "情報を削除しました"
  end

  private

  def discuss_params
    params.require(:discuss).permit(:title, :text, :tag, :user_from_id, :user_to_id)
  end
end
