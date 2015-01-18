class ParticipantsController < ApplicationController
  before_action :set_participant, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with name:     ENV['ADMIN_USER'],
                               password: ENV['ADMIN_PASS'],
                               except: :create

  # GET /participants
  # GET /participants.json
  def index
    #@participants = Participant.all
    @participants = current_edition.participants.all
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
  end

  # GET /participants/new
  def new
    @participant = Participant.new
  end

  # GET /participants/1/edit
  def edit
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.find_by_email(participant_params[:email])
    @participant ||= Participant.new(participant_params)

    respond_to do |format|
      if @participant.save_with_current_edition
        format.html { redirect_to @participant, notice: 'Participant was successfully created.' }
        format.json { render :show, status: :created, location: @participant }
      else
        format.html { render :new }
        format.json do
          error_str = @participant.errors.full_messages.join(', ')
          error_str = 'Some error occurred' if error_str.empty?
          render text: error_str.html_safe, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /participants/1
  # PATCH/PUT /participants/1.json
  def update
    respond_to do |format|
      if @participant.update(participant_params)
        format.html { redirect_to @participant, notice: 'Participant was successfully updated.' }
        format.json { render :show, status: :ok, location: @participant }
      else
        format.html { render :edit }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant.destroy
    respond_to do |format|
      format.html { redirect_to participants_url, notice: 'Participant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_participant
    @participant = Participant.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def participant_params
    params.require(:participant).permit(:name, :email, :attended_meetups, :living_in_chennai, :student_or_employed, :have_ruby_configured_laptop, :remarks)
  end
end
