class CousController < ApplicationController
  before_action :set_cou, only: [:show, :edit, :update, :destroy]

  # GET /cous
  # GET /cous.json
  def index
    @cous = Cou.all
  end

  # GET /cous/1
  # GET /cous/1.json
  def show
  end

  # GET /cous/new
  def new
    @cou = Cou.new
  end

  # GET /cous/1/edit
  def edit
  end

  # POST /cous
  # POST /cous.json
  def create
    @cou = Cou.new(cou_params)

    respond_to do |format|
      if @cou.save
        format.html { redirect_to @cou, notice: 'Cou was successfully created.' }
        format.json { render :show, status: :created, location: @cou }
      else
        format.html { render :new }
        format.json { render json: @cou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cous/1
  # PATCH/PUT /cous/1.json
  def update
    respond_to do |format|
      if @cou.update(cou_params)
        format.html { redirect_to @cou, notice: 'Cou was successfully updated.' }
        format.json { render :show, status: :ok, location: @cou }
      else
        format.html { render :edit }
        format.json { render json: @cou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cous/1
  # DELETE /cous/1.json
  def destroy
    @cou.destroy
    respond_to do |format|
      format.html { redirect_to cous_url, notice: 'Cou was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cou
      @cou = Cou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cou_params
      params.require(:cou).permit(:name, :prerequisite, :description, :category, :location)
    end
end
