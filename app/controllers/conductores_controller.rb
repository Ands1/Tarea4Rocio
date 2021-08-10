class ConductoresController < ApplicationController
  before_action :set_conductore, only: %i[ show edit update destroy ]

  # GET /conductores or /conductores.json
  def index
    @conductores = Conductore.all
  end

  # GET /conductores/1 or /conductores/1.json
  def show
  end

  # GET /conductores/new
  def new
    @conductore = Conductore.new
  end

  # GET /conductores/1/edit
  def edit
  end

  # POST /conductores or /conductores.json
  def create
    @conductore = Conductore.new(conductore_params)

    respond_to do |format|
      if @conductore.save
        format.html { redirect_to @conductore, notice: "Conductore was successfully created." }
        format.json { render :show, status: :created, location: @conductore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @conductore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /conductores/1 or /conductores/1.json
  def update
    respond_to do |format|
      if @conductore.update(conductore_params)
        format.html { redirect_to @conductore, notice: "Conductore was successfully updated." }
        format.json { render :show, status: :ok, location: @conductore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @conductore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /conductores/1 or /conductores/1.json
  def destroy
    @conductore.destroy
    respond_to do |format|
      format.html { redirect_to conductores_url, notice: "Conductore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conductore
      @conductore = Conductore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def conductore_params
      params.require(:conductore).permit(:name)
    end
end
