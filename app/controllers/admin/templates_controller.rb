class Admin::TemplatesController < AdminController

  def edit
    @template = Template.first || Template.create
  end

  def update
    @template = Template.first

    if @template.update_attributes(params[:template])
      redirect_to edit_admin_template_path
    end

  end

end