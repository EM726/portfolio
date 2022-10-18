class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def login_check
      if current_user.nil?
        redirect_to root_url, danger: "ログインしてください"
      end
    end

  # ログイン済ユーザーのみにアクセスを許可する
  

  # deviseコントローラーにストロングパラメータを追加する          
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    # サインアップ時にnameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_name])
    # アカウント編集の時にnameとprofileのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name])
  end
end
