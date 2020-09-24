class TrainingsController < ApplicationController
  # skip_before_action :authenticate_user!
  before_action :set_training, only: [:show]

  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
  end

  def create
    @training = Training.new(training_params)
    @training.save!
    redirect_to trainings_path
  end

  def show
    @participants = @training.participants    
  end

  private

  def training_params
    params.require(:training).permit(:group, :date)
  end

  def set_training
    @training = Training.find(params[:id])
  end
end