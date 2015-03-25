class SweepsController < ApplicationController
  before_action :set_sweep, only: [:show, :edit, :update, :destroy]

  # GET /sweeps
  # GET /sweeps.json
  def index
    @sweeps = Sweep.all
  end

  # GET /sweeps/1
  # GET /sweeps/1.json
  def show
  end

  # GET /sweeps/new
  def new
    @sweep = Sweep.new
  end

  # GET /sweeps/1/edit
  def edit
  end

  # POST /sweeps
  # POST /sweeps.json
  def create
    @sweep = Sweep.new(sweep_params)

    respond_to do |format|
      if @sweep.save
        format.html { redirect_to @sweep, notice: 'Sweep was successfully created.' }
        format.json { render :show, status: :created, location: @sweep }
      else
        format.html { render :new }
        format.json { render json: @sweep.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sweeps/1
  # PATCH/PUT /sweeps/1.json
  def update
    respond_to do |format|
      if @sweep.update(sweep_params)
        format.html { redirect_to @sweep, notice: 'Sweep was successfully updated.' }
        format.json { render :show, status: :ok, location: @sweep }
      else
        format.html { render :edit }
        format.json { render json: @sweep.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sweeps/1
  # DELETE /sweeps/1.json
  def destroy
    @sweep.destroy
    respond_to do |format|
      format.html { redirect_to sweeps_url, notice: 'Sweep was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sweep
      @sweep = Sweep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sweep_params
      params.require(:sweep).permit(:title, :date)
    end
end
