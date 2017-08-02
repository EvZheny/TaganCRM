class ExercisesController < ApplicationController

  skip_before_action :auth_user!

  def index
    @exercises = Exercise.all
    @view_exercises = []
    @exercises.each do
      |ex| @view_exercises << new_exercise(ex)
    end
  end

  def show
    @exercise = Exercise.find(params[:id])
    @view_exercises = new_exercise(@exercise)
  end

  def new
    @exercise = Exercise.new
    @users = User.all
    @exercise_lists = ExerciseList.all
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

  def new_exercise (ex={})
    new_exercise = {
        id:       ex.id,
        exercise: ExerciseList.find(ex.exercise_list_id).exercise,
        user:     User.find(ex.user_name_id).first_name + " " + User.find(ex.user_name_id).last_name,
        weight:   ex.weight}
  end

end
