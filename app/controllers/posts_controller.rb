class PostsController < ApplicationController
  def index
    # @question = Question.find_by(user_id: user.id)
    @question = Question.first
    @options = Option.where(parent_question_id: @question.id)
  end

  def reply
    @nextQuestion = Question.find_by(id: params[:child_id])

    respond_to do |format|
      format.json { render json: {nextQuestion: @nextQuestion, options: @nextQuestion.options } }
    end
  end

  def create
    # create a new question
    question = Question.create!(question: params[:question])

    # associate
    option = Option.find(params[:parent_option_id])
    option.child_question_id = question.id
    option.save

    params[:option1] && option = Option.create!(option: params[:option1], parent_question_id: question.id)
    params[:option2] && option = Option.create!(option: params[:option2], parent_question_id: question.id)
    redirect_to posts_path
  end

  def option
    option = Option.create!(option: params[:option], parent_question_id: params[:parent_id])
    redirect_to posts_path
  end
end
