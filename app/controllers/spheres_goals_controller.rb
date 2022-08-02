class SpheresGoalsController < ApplicationController
  before_action :set_spheres_goal, only: [:show, :update, :destroy]

  # GET /spheres_goals
  def index
    @spheres_goals = SpheresGoal.all

    render json: @spheres_goals
  end

  # GET /spheres_goals/1
  def show
    render json: @spheres_goal
  end

  # POST /spheres_goals
  def create
    @spheres_goal = SpheresGoal.new(spheres_goal_params)

    if @spheres_goal.save
      render json: @spheres_goal, status: :created, location: @spheres_goal
    else
      render json: @spheres_goal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spheres_goals/1
  def update
    if @spheres_goal.update(spheres_goal_params)
      render json: @spheres_goal
    else
      render json: @spheres_goal.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spheres_goals/1
  def destroy
    @spheres_goal.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spheres_goal
      @spheres_goal = SpheresGoal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def spheres_goal_params
      params.require(:spheres_goal).permit(:goal_id, :sphere_id)
    end
end
