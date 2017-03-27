class RepasController < ApplicationController
  before_action :set_repa, only: [:show, :edit, :update, :destroy]

  # GET /repas
  # GET /repas.json
  def index
    @repas = Repa.all
  end

  # GET /repas/1
  # GET /repas/1.json
  def show
  end

  # GET /repas/new
  def new
    @repa = Repa.new
  end

  # GET /repas/1/edit
  def edit
  end

  # POST /repas
  # POST /repas.json
  def create
    @repa = Repa.new(repa_params)

    respond_to do |format|
      if @repa.save
        format.html { redirect_to @repa, notice: 'Repa was successfully created.' }
        format.json { render :show, status: :created, location: @repa }
      else
        format.html { render :new }
        format.json { render json: @repa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repas/1
  # PATCH/PUT /repas/1.json
  def update
    respond_to do |format|
      if @repa.update(repa_params)
        format.html { redirect_to @repa, notice: 'Repa was successfully updated.' }
        format.json { render :show, status: :ok, location: @repa }
      else
        format.html { render :edit }
        format.json { render json: @repa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repas/1
  # DELETE /repas/1.json
  def destroy
    @repa.destroy
    respond_to do |format|
      format.html { redirect_to repas_url, notice: 'Repa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repa
      @repa = Repa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repa_params
      params.require(:repa).permit(:Date, :menu, :location, :organisator, :participants, :participantnumber)
    end
end
