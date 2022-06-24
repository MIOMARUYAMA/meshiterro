class ApplicationController < ActionController::Base
  # devise利用の機能（サインアップ、サインイン）が使われる前に
  # config_permitted_parametersメソッドが実行される。
  before_action :configure_permitted_parameters, if: :devise_controller?


  def after_sign_in_path_for(resource)
    about_path
  end

  def after_sign_out_path_for(resource)
    about_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:name])
  end
end
