class ConductorsController < ApplicationController
  before_action :set_conductor, only: %i[ show edit update destroy ]

  # GET /conductors or /conductors.json
  def index
    @conductors = Conductor.all
  end

  # GET /conductors/1 or /conductors/1.json
  def show
  end

  # GET /conductors/new
  def new
    @conductor = Conductor.new
  end

  # GET /conductors/1/edit
  def edit
  end

  # POST /conductors or /conductors.json
  def create
    @conductor = Conductor.new(conductor_params)

    respond_to do |format|
      if @conductor.save
        format.html { redirect_to @conductor, notice: "Conductor was successfully created." }
        format.json { render :show, status: :created, location: @conductor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conductor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conductors/1 or /conductors/1.json
  def update
    respond_to do |format|
      if @conductor.update(conductor_params)
        format.html { redirect_to @conductor, notice: "Conductor was successfully updated." }
        format.json { render :show, status: :ok, location: @conductor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conductor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conductors/1 or /conductors/1.json
  def destroy
    @conductor.destroy
    respond_to do |format|
      format.html { redirect_to conductors_url, notice: "Conductor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conductor
      @conductor = Conductor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conductor_params
      params.require(:conductor).permit(:name)
    end
end
