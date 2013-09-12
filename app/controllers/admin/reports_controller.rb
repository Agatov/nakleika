class Admin::ReportsController < AdminController

  def index
    @reports = Report.order(:id)
  end

  def new
    @report = Report.new
  end

  def create
    @report = Report.new params[:report]

    if @report.save
      redirect_to admin_reports_path
    end
  end

  def edit
    @report = Report.find params[:id]
  end

  def update
    @report = Report.find params[:id]

    if @report.update_attributes(params[:report])
      redirect_to admin_reports_path
    end

  end

  def destroy
    @report = Report.find params[:id]
    @report.destroy
    redirect_to admin_reports_path
  end
end