# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  add_flash_types :success, :danger, :info

  protected

  def after_sign_in_path_for(resource)
    # resourceにする意味はよくわからない
    # if文だとうまくいかないのでcase-whenを使用
    case resource
    when Admin
      admins_top_path
    when User
      users_top_path
    end
    end

  def after_sign_out_path_for(resource)
    if Admin
      root_path
    elsif User
      root_path
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[admin_id domicle name name_kana first_name first_name_kana fam_name fam_name_kana post_code address email tel])
    # sign_upの際にnameのデータ操作を許。追加したカラム。
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name name_kana first_name first_name_kana fam_name fam_name_kana post_code address email tel is_active image_id])
    end
end
