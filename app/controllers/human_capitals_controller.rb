class HumanCapitalsController < ApplicationController
  before_action :set_human_capital, only: [:show, :edit, :update, :destroy]

  # GET /human_capitals
  # GET /human_capitals.json
  def index
    @human_capitals = HumanCapital.all
  end

  # GET /human_capitals/1
  # GET /human_capitals/1.json
  def show
  end

  # GET /human_capitals/new
  def new
    @human_capital = HumanCapital.new
  end

  # GET /human_capitals/1/edit
  def edit
  end

  # POST /human_capitals
  # POST /human_capitals.json
  def create
    @human_capital = HumanCapital.new(human_capital_params)

    respond_to do |format|
      if @human_capital.save
        format.html { redirect_to @human_capital, notice: 'Human capital was successfully created.' }
        format.json { render :show, status: :created, location: @human_capital }
      else
        format.html { render :new }
        format.json { render json: @human_capital.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /human_capitals/1
  # PATCH/PUT /human_capitals/1.json
  def update
    respond_to do |format|
      if @human_capital.update(human_capital_params)
        format.html { redirect_to @human_capital, notice: 'Human capital was successfully updated.' }
        format.json { render :show, status: :ok, location: @human_capital }
      else
        format.html { render :edit }
        format.json { render json: @human_capital.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /human_capitals/1
  # DELETE /human_capitals/1.json
  def destroy
    @human_capital.destroy
    respond_to do |format|
      format.html { redirect_to human_capitals_url, notice: 'Human capital was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_human_capital
      @human_capital = HumanCapital.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def human_capital_params
      params.require(:human_capital).permit(:total, :captcha_score, :number_of_images_uploaded, :number_of_images_downloaded, :number_of_labels_made, :membership_length)
    end
end
