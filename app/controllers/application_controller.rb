class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
    @template = Template.first
    @setting = Setting.first
    @questions = Question.order(:id)
    @reports = Report.order(:id)
  end
end
