class KristineToysController < ApplicationController
  before_action :set_kristine_toy, only: [:show, :edit, :update, :destroy]

  # GET /kristine_toys
  # GET /kristine_toys.json
  def index
    @kristine_toys = KristineToy.all
  end

  # GET /kristine_toys/1
  # GET /kristine_toys/1.json
  def show
  end

  # GET /kristine_toys/new
  def new
    @kristine_toy = KristineToy.new
  end

  # GET /kristine_toys/1/edit
  def edit
  end

  # POST /kristine_toys
  # POST /kristine_toys.json
  def create
    @kristine_toy = KristineToy.new(kristine_toy_params)

    respond_to do |format|
      if @kristine_toy.save
        format.html { redirect_to @kristine_toy, notice: 'Kristine toy was successfully created.' }
        format.json { render :show, status: :created, location: @kristine_toy }
      else
        format.html { render :new }
        format.json { render json: @kristine_toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kristine_toys/1
  # PATCH/PUT /kristine_toys/1.json
  def update
    respond_to do |format|
      if @kristine_toy.update(kristine_toy_params)
        format.html { redirect_to @kristine_toy, notice: 'Kristine toy was successfully updated.' }
        format.json { render :show, status: :ok, location: @kristine_toy }
      else
        format.html { render :edit }
        format.json { render json: @kristine_toy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kristine_toys/1
  # DELETE /kristine_toys/1.json
  def destroy
    @kristine_toy.destroy
    respond_to do |format|
      format.html { redirect_to kristine_toys_url, notice: 'Kristine toy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kristine_toy
      @kristine_toy = KristineToy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kristine_toy_params
      params.require(:kristine_toy).permit(:name, :toy_type, :date_last_played_with, :favorite)
    end
end
