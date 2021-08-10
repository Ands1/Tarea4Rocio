class AutomovilesController < ApplicationController
  before_action :set_automovile, only: %i[ show edit update destroy ]

  # GET /automoviles or /automoviles.json
  def index
    @automoviles = Automovile.all
  end

  # GET /automoviles/1 or /automoviles/1.json
  def show
  end

  # GET /automoviles/new
  def new
    @automovile = Automovile.new
  end

  # GET /automoviles/1/edit
  def edit
  end

  # POST /automoviles or /automoviles.json
  def create
    @automovile = Automovile.new(automovile_params)

    respond_to do |format|
      if @automovile.save
        format.html { redirect_to @automovile, notice: "Automovile was successfully created." }
        format.json { render :show, status: :created, location: @automovile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @automovile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /automoviles/1 or /automoviles/1.json
  def update
    respond_to do |format|
      if @automovile.update(automovile_params)
        format.html { redirect_to @automovile, notice: "Automovile was successfully updated." }
        format.json { render :show, status: :ok, location: @automovile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @automovile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /automoviles/1 or /automoviles/1.json
  def destroy
    @automovile.destroy
    respond_to do |format|
      format.html { redirect_to automoviles_url, notice: "Automovile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_automovile
      @automovile = Automovile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def automovile_params
      params.require(:automovile).permit(:model, :brand, :driverid, :alias, :code)
    end
end
