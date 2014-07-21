class ShoutoutsController < ApplicationController
  before_action :set_shoutout, only: [:show, :edit, :update, :destroy]

  # GET /shoutouts
  # GET /shoutouts.json
  def index
    @shoutouts = Shoutout.all
  end

  # GET /shoutouts/1
  # GET /shoutouts/1.json
  def show
  end

  # GET /shoutouts/new
  def new
    @shoutout = Shoutout.new
  end

  # GET /shoutouts/1/edit
  def edit
  end

  # POST /shoutouts
  # POST /shoutouts.json
  def create
    @shoutout = Shoutout.new(shoutout_params)

    respond_to do |format|
      if @shoutout.save
        format.html { redirect_to @shoutout, notice: 'Shoutout was successfully created.' }
        format.json { render :show, status: :created, location: @shoutout }
      else
        format.html { render :new }
        format.json { render json: @shoutout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoutouts/1
  # PATCH/PUT /shoutouts/1.json
  def update
    respond_to do |format|
      if @shoutout.update(shoutout_params)
        format.html { redirect_to @shoutout, notice: 'Shoutout was successfully updated.' }
        format.json { render :show, status: :ok, location: @shoutout }
      else
        format.html { render :edit }
        format.json { render json: @shoutout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoutouts/1
  # DELETE /shoutouts/1.json
  def destroy
    @shoutout.destroy
    respond_to do |format|
      format.html { redirect_to shoutouts_url, notice: 'Shoutout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoutout
      @shoutout = Shoutout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shoutout_params
      params.require(:shoutout).permit(:name, :content, :newsletter_id)
    end
end
