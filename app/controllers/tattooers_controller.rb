class TattooersController < ApplicationController
  before_action :set_tattooer, only: [:show, :edit, :update, :destroy]

  # GET /tattooers
  # GET /tattooers.json
  def index
    @tattooers = Tattooer.all
  end

  # GET /tattooers/1
  # GET /tattooers/1.json
  def show
  end

  # GET /tattooers/new
  def new
    @tattooer = Tattooer.new
  end

  # GET /tattooers/1/edit
  def edit
  end

  # POST /tattooers
  # POST /tattooers.json
  def create
    @tattooer = Tattooer.new(tattooer_params)

    respond_to do |format|
      if @tattooer.save
        format.html { redirect_to @tattooer, notice: 'Tattooer was successfully created.' }
        format.json { render :show, status: :created, location: @tattooer }
      else
        format.html { render :new }
        format.json { render json: @tattooer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tattooers/1
  # PATCH/PUT /tattooers/1.json
  def update
    respond_to do |format|
      if @tattooer.update(tattooer_params)
        format.html { redirect_to @tattooer, notice: 'Tattooer was successfully updated.' }
        format.json { render :show, status: :ok, location: @tattooer }
      else
        format.html { render :edit }
        format.json { render json: @tattooer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tattooers/1
  # DELETE /tattooers/1.json
  def destroy
    @tattooer.destroy
    respond_to do |format|
      format.html { redirect_to tattooers_url, notice: 'Tattooer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tattooer
      @tattooer = Tattooer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tattooer_params
      params.require(:tattooer).permit(:name, :style, :email)
    end
end
