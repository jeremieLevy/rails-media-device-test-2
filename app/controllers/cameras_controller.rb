class CamerasController < ApplicationController
  before_action :set_camera, only: %i[ show edit update destroy ]

  # GET /cameras
  def index
    @cameras = Camera.all
  end

  # GET /cameras/1
  def show
  end

  # GET /cameras/new
  def new
    @camera = Camera.new
  end

  # GET /cameras/1/edit
  def edit
  end

  # POST /cameras
  def create
    @camera = Camera.new(camera_params)

    if @camera.save
      redirect_to @camera, notice: "Camera was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cameras/1
  def update
    if @camera.update(camera_params)
      redirect_to @camera, notice: "Camera was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /cameras/1
  def destroy
    @camera.destroy!
    redirect_to cameras_url, notice: "Camera was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camera
      @camera = Camera.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def camera_params
      params.fetch(:camera, {})
    end
end
