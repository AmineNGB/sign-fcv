class SessionsController < ApplicationController
  # skip_before_action :authenticate_user!
  before_action :set_session, only: [:show]

  def index
    @sessions = Session.all
  end

  def create
    @session = Session.new(session_params)
    @session.save!
    redirect_to sessions_path
  end

  def show
  end

  private

  def session_params
    params.require(:session).permit(:group, :date, :time)
  end

  def set_session
    @session = session.find(params[:id])
  end
end