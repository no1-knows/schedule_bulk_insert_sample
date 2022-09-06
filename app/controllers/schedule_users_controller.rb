class ScheduleUsersController < ApplicationController
  before_action :set_schedule_user, only: %i[ show edit update destroy ]

  # GET /schedule_users or /schedule_users.json
  def index
    @schedule_users = ScheduleUser.all
  end

  # GET /schedule_users/1 or /schedule_users/1.json
  def show
  end

  # GET /schedule_users/new
  def new
    @schedule_user = ScheduleUser.new
  end

  # GET /schedule_users/1/edit
  def edit
  end

  # POST /schedule_users or /schedule_users.json
  def create
    @schedule_user = ScheduleUser.new(schedule_user_params)

    respond_to do |format|
      if @schedule_user.save
        format.html { redirect_to schedule_user_url(@schedule_user), notice: "Schedule user was successfully created." }
        format.json { render :show, status: :created, location: @schedule_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @schedule_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedule_users/1 or /schedule_users/1.json
  def update
    respond_to do |format|
      if @schedule_user.update(schedule_user_params)
        format.html { redirect_to schedule_user_url(@schedule_user), notice: "Schedule user was successfully updated." }
        format.json { render :show, status: :ok, location: @schedule_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @schedule_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedule_users/1 or /schedule_users/1.json
  def destroy
    @schedule_user.destroy

    respond_to do |format|
      format.html { redirect_to schedule_users_url, notice: "Schedule user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule_user
      @schedule_user = ScheduleUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def schedule_user_params
      params.require(:schedule_user).permit(:schedule_id, :user_id)
    end
end
