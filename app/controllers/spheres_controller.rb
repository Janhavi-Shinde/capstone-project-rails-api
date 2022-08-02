class SpheresController < ApplicationController
  before_action :set_sphere, only: [:show, :update, :destroy]

  # GET /spheres
  def index
    spheres = Sphere.all
    render json: SphereSerializer.new(spheres)
  end

  # GET /spheres/1
  def show
    sphere = Sphere.find(params[:id])
      options = {
    include: [:user, :goals]
  }
  render json: SphereSerializer.new(sphere, options)
  end

  # POST /spheres
  def create
    @sphere = Sphere.new(sphere_params)

    if @sphere.save
      render json: @sphere, status: :created, location: @sphere
    else
      render json: @sphere.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spheres/1
  def update
    if @sphere.update(sphere_params)
      render json: @sphere
    else
      render json: @sphere.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spheres/1
  def destroy
    @sphere.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sphere
      @sphere = Sphere.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sphere_params
      params.require(:sphere).permit(:title, :user_id, :goal_aim, :aim_achieved)
    end
end
