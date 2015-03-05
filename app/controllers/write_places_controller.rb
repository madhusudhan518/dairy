class WritePlacesController < ApplicationController
  before_action :set_write_place, only: [:show, :edit, :update, :destroy]

  # GET /write_places
  # GET /write_places.json
  def index
    @write_places = WritePlace.all
  end

  # GET /write_places/1
  # GET /write_places/1.json
  def show
  end

  # GET /write_places/new
  def new
    @write_place = WritePlace.new
  end

  # GET /write_places/1/edit
  def edit
  end

  # POST /write_places
  # POST /write_places.json
  def create
    @write_place = WritePlace.new(write_place_params)

    respond_to do |format|
      if @write_place.save
        format.html { redirect_to @write_place, notice: 'Write place was successfully created.' }
        format.json { render :show, status: :created, location: @write_place }
      else
        format.html { render :new }
        format.json { render json: @write_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /write_places/1
  # PATCH/PUT /write_places/1.json
  def update
    respond_to do |format|
      if @write_place.update(write_place_params)
        format.html { redirect_to @write_place, notice: 'Write place was successfully updated.' }
        format.json { render :show, status: :ok, location: @write_place }
      else
        format.html { render :edit }
        format.json { render json: @write_place.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /write_places/1
  # DELETE /write_places/1.json
  def destroy
    @write_place.destroy
    respond_to do |format|
      format.html { redirect_to write_places_url, notice: 'Write place was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_write_place
      @write_place = WritePlace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def write_place_params
      params.require(:write_place).permit(:name, :date, :text)
    end
end
