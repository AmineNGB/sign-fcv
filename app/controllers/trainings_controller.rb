class TrainingsController < ApplicationController
  # skip_before_action :authenticate_user!
  before_action :set_training, only: [:show]

  def index
    @trainings = Training.all
    @participants = []
    if current_user
      current_user.participants.each do |t|
        @participants << t.training.id
      end
    end
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
    respond_to do |format|
      format.html
      format.csv { send_data @participants.to_csv, filename: "Fiche de présence - #{Date.today}.csv" }
    end

  end

  private

  def training_params
    params.require(:training).permit(:group, :date)
  end

  def set_training
    @training = Training.find(params[:id])
  end
end