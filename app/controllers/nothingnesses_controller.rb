class NothingnessesController < ApplicationController
  before_action :set_nothingness, only: [:show, :edit, :update, :destroy]

  # GET /nothingnesses
  # GET /nothingnesses.json
  def index
    @nothingnesses = Nothingness.all
  end

  # GET /nothingnesses/1
  # GET /nothingnesses/1.json
  def show
  end

  # GET /nothingnesses/new
  def new
    @nothingness = Nothingness.new
  end

  # GET /nothingnesses/1/edit
  def edit
  end

  # POST /nothingnesses
  # POST /nothingnesses.json
  def create
    @nothingness = Nothingness.new(nothingness_params)

    respond_to do |format|
      if @nothingness.save
        format.html { redirect_to @nothingness, notice: 'Nothingness was successfully created.' }
        format.json { render :show, status: :created, location: @nothingness }
      else
        format.html { render :new }
        format.json { render json: @nothingness.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nothingnesses/1
  # PATCH/PUT /nothingnesses/1.json
  def update
    respond_to do |format|
      if @nothingness.update(nothingness_params)
        format.html { redirect_to @nothingness, notice: 'Nothingness was successfully updated.' }
        format.json { render :show, status: :ok, location: @nothingness }
      else
        format.html { render :edit }
        format.json { render json: @nothingness.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nothingnesses/1
  # DELETE /nothingnesses/1.json
  def destroy
    @nothingness.destroy
    respond_to do |format|
      format.html { redirect_to nothingnesses_url, notice: 'Nothingness was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nothingness
      @nothingness = Nothingness.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nothingness_params
      params.require(:nothingness).permit(:make, :model, :year)
    end
end
