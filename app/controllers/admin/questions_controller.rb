class Admin::QuestionsController < AdminController

  def index
    @questions = Question.order(:id)
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new params[:question]

    if @question.save
      redirect_to admin_questions_path
    end
  end

  def edit
    @question = Question.find params[:id]
  end

  def update
    @question = Question.find params[:id]

    if @question.update_attributes(params[:question])
      redirect_to admin_questions_path
    end

  end

  def destroy
    @question = Question.find params[:id]
    @question.destroy
    redirect_to admin_questions_path
  end
end