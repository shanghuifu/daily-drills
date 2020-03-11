# Railsアプリケーションのコントローラーに関して以下のコードをみてください

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters , if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar])
  end
end

# ApplicationControllerを継承しているコントローラー（ranking, users, およびdevise用のコントローラー）内の
# 全てのアクションが実行される前に、before_actionが実行される。

# もしそれがdeviseのコントローラーだったら（devise_controller?というメソッドの返り値がtrueだったら）
# configure_permitted_parametersを呼ぶ。

# configure_permitted_parametersの中で、devise_parameter_sanitizerが事項されるが、
# これはストロングパラメータのdevise版。サインアップ時に、nicknameとavatarカラムへの保存を許可する。