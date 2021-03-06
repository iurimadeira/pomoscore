class PomodorosController < ApplicationController
  before_action :set_pomodoro, only: [:show, :edit, :update, :destroy]

  # GET /pomodoros
  # GET /pomodoros.json
  def index
    @pomodoros = current_user.pomodoros
  end

  # GET /pomodoros/1
  # GET /pomodoros/1.json
  def show
  end

  # GET /pomodoros/new
  def new
    @pomodoro = current_user.pomodoros.new
  end

  # GET /pomodoros/1/edit
  def edit
  end

  # POST /pomodoros
  # POST /pomodoros.json
  def create
    @pomodoro = current_user.pomodoros.new(score: current_user.default_score)

    respond_to do |format|
      if @pomodoro.save
        format.html { redirect_to pomodoros_url, notice: 'Pomodoro was successfully created.' }
        format.json { render :index, status: :created, location: @pomodoro }
      else
        format.html { render :new }
        format.json { render json: @pomodoro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pomodoros/1
  # PATCH/PUT /pomodoros/1.json
  def update
    respond_to do |format|
      if @pomodoro.update(pomodoro_params)
        format.html { redirect_to @pomodoro, notice: 'Pomodoro was successfully updated.' }
        format.json { render :show, status: :ok, location: @pomodoro }
      else
        format.html { render :edit }
        format.json { render json: @pomodoro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pomodoros/1
  # DELETE /pomodoros/1.json
  def destroy
    @pomodoro.destroy
    respond_to do |format|
      format.html { redirect_to pomodoros_url, notice: 'Pomodoro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pomodoro
      @pomodoro = Pomodoro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pomodoro_params
      params.require(:pomodoro).permit(:score, :used_at, :user_id)
    end
end
