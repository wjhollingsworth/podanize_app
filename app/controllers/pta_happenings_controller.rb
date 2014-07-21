class PtaHappeningsController < ApplicationController
  before_action :set_pta_happening, only: [:show, :edit, :update, :destroy]

  # GET /pta_happenings
  # GET /pta_happenings.json
  def index
    @pta_happenings = PtaHappening.all
  end

  # GET /pta_happenings/1
  # GET /pta_happenings/1.json
  def show
  end

  # GET /pta_happenings/new
  def new
    @pta_happening = PtaHappening.new
  end

  # GET /pta_happenings/1/edit
  def edit
  end

  # POST /pta_happenings
  # POST /pta_happenings.json
  def create
    @pta_happening = PtaHappening.new(pta_happening_params)

    respond_to do |format|
      if @pta_happening.save
        format.html { redirect_to @pta_happening, notice: 'Pta happening was successfully created.' }
        format.json { render :show, status: :created, location: @pta_happening }
      else
        format.html { render :new }
        format.json { render json: @pta_happening.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pta_happenings/1
  # PATCH/PUT /pta_happenings/1.json
  def update
    respond_to do |format|
      if @pta_happening.update(pta_happening_params)
        format.html { redirect_to @pta_happening, notice: 'Pta happening was successfully updated.' }
        format.json { render :show, status: :ok, location: @pta_happening }
      else
        format.html { render :edit }
        format.json { render json: @pta_happening.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pta_happenings/1
  # DELETE /pta_happenings/1.json
  def destroy
    @pta_happening.destroy
    respond_to do |format|
      format.html { redirect_to pta_happenings_url, notice: 'Pta happening was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pta_happening
      @pta_happening = PtaHappening.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pta_happening_params
      params.require(:pta_happening).permit(:name, :content, :newsletter_id)
    end
end
