class Admin::SettingsController < AdminController

  def edit
    @setting = Setting.first || Setting.create
  end

  def update
    @setting = Setting.first

    if @setting.update_attributes(params[:setting])
      redirect_to edit_admin_setting_path
    end

  end

end