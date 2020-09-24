class ParticipantsController < ApplicationController
  before_action :set_participant, only: [:show, :destroy]

  def index
    @trainings = Training.all
    
  end


  def new
    @participant = Participant.new
  end

  def create
    @participant = Participant.create!(user_id: current_user.id, training_id: params[:training_id])
  end

  def destroy
    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to participants_path
  end

  def show
  end

  private

  def participants_params
    params.require(:participant).permit(:user_id, :training_id)
  end

  def set_participant
    @participant = Participant.find(params[:id])
  end
end