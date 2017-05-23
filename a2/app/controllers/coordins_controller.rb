class CoordinsController < ApplicationController
  before_action :set_coordin, only: [:show, :edit, :update, :destroy]

  # GET /coordins
  # GET /coordins.json
  def index
    @coordins = Coordin.all
  end

  # GET /coordins/1
  # GET /coordins/1.json
  def show
  end

  # GET /coordins/new
  def new
    @coordin = Coordin.new
  end

  # GET /coordins/1/edit
  def edit
  end

  # POST /coordins
  # POST /coordins.json
  def create
    @coordin = Coordin.new(coordin_params)

    respond_to do |format|
      if @coordin.save
        format.html { redirect_to @coordin, notice: 'Coordinator was successfully created.' }
        format.json { render :show, status: :created, location: @coordin }
      else
        format.html { render :new }
        format.json { render json: @coordin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coordins/1
  # PATCH/PUT /coordins/1.json
  def update
    respond_to do |format|
      if @coordin.update(coordin_params)
        format.html { redirect_to @coordin, notice: 'Coordinator was successfully updated.' }
        format.json { render :show, status: :ok, location: @coordin }
      else
        format.html { render :edit }
        format.json { render json: @coordin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coordins/1
  # DELETE /coordins/1.json
  def destroy
    @coordin.destroy
    respond_to do |format|
      format.html { redirect_to coordins_url, notice: 'Coordinator was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordin
      @coordin = Coordin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coordin_params
      params.require(:coordin).permit(:name, :email, :password)
    end
end
