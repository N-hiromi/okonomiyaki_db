class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    flash[:notice] = "ログインに成功しました"
    tops_path
  end

  def after_sign_out_path_for(resource)
    flash[:alert] = "ログアウトしました"
    new_user_session_path
  end

  def autheniticate_user
    if current_user.nil?
      flash[:notice] = "ログインが必要です"
      redirect_to new_user_session_path
    end
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :department])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :department])
  end
end
