class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :update, :destroy]

  # GET /pets
  def index
    @pets = Pet.all

    render json: @pets
  end

  # GET /pets/1
  def show
    render json: @pet
  end

  # POST /pets
  def create
    @pet = Pet.create({
      user_id: params[:user_id],
      lost_status: params[:lost_status],
      name: params[:name],
      species: params[:species],
      gender: params[:gender],
      size: params[:size],
      color: params[:color],
      age: params[:age],
      breed: params[:breed],
      temperament: params[:temperament],
      comments: params[:comments],
      date_lost_or_found: params[:date_lost_or_found],
      chip_id: params[:chip_id],
      additional_lost_found_info: params[:additional_lost_found_info],
      latitude: params[:latitude],
      longitude: params[:longitude],
      picture_url: params[:picture_url]
    })

    render json: @job_tracker, status: :created
  end

  # PATCH/PUT /pets/1
  def update
    if @pet.update(pet_params)
      render json: @pet
    else
      render json: @pet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet
      @pet = Pet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pet_params
      params.fetch(:pet, {})
    end
end
