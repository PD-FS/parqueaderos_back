class NoveltiesController < ApplicationController
  before_action :set_novelty, only: [:show, :edit, :update, :destroy]

  # GET /novelties
  # GET /novelties.json
  def index
    @novelties = Novelty.all
  end

  # GET /novelties/1
  # GET /novelties/1.json
  def show
  end

  # GET /novelties/new
  def new
    @novelty = Novelty.new
  end

  # GET /novelties/1/edit
  def edit
  end

  # POST /novelties
  # POST /novelties.json
  def create
    @novelty = Novelty.new(novelty_params)

    respond_to do |format|
      if @novelty.save
        format.html { redirect_to @novelty, notice: 'Novelty was successfully created.' }
        format.json { render :show, status: :created, location: @novelty }
      else
        format.html { render :new }
        format.json { render json: @novelty.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /novelties/1
  # PATCH/PUT /novelties/1.json
  def update
    respond_to do |format|
      if @novelty.update(novelty_params)
        format.html { redirect_to @novelty, notice: 'Novelty was successfully updated.' }
        format.json { render :show, status: :ok, location: @novelty }
      else
        format.html { render :edit }
        format.json { render json: @novelty.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /novelties/1
  # DELETE /novelties/1.json
  def destroy
    @novelty.destroy
    respond_to do |format|
      format.html { redirect_to novelties_url, notice: 'Novelty was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_novelty
      @novelty = Novelty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def novelty_params
      params.require(:novelty).permit(:scheduleId_id, :entryState, :outputState)
    end
end
