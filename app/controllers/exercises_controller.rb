class ExercisesController < ApplicationController

  skip_before_action :auth_user!

  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.where(id: params[:id]).first
    render "show"
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)
    if @exercise.errors.empty?
      redirect_to exercise_path(@exercise)
    else
      render "new"
    end
  end

  def exercise_params
    params.require(:exercise).permit(:exercise_list_id, :user_name_id, :weight)
  end

end
