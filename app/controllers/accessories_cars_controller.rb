class AccessoriesCarsController < ApplicationController
  before_action :set_accessories_car, only: [:show, :edit, :update, :destroy]

  # GET /accessories_cars
  # GET /accessories_cars.json
  def index
    @accessories_cars = AccessoriesCar.all
  end

  # GET /accessories_cars/1
  # GET /accessories_cars/1.json
  def show
  end

  # GET /accessories_cars/new
  def new
    @accessories_car = AccessoriesCar.new
  end

  # GET /accessories_cars/1/edit
  def edit
  end

  # POST /accessories_cars
  # POST /accessories_cars.json
  def create
    @accessories_car = AccessoriesCar.new(accessories_car_params)

    respond_to do |format|
      if @accessories_car.save
        format.html { redirect_to @accessories_car, notice: 'Accessories car was successfully created.' }
        format.json { render :show, status: :created, location: @accessories_car }
      else
        format.html { render :new }
        format.json { render json: @accessories_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accessories_cars/1
  # PATCH/PUT /accessories_cars/1.json
  def update
    respond_to do |format|
      if @accessories_car.update(accessories_car_params)
        format.html { redirect_to @accessories_car, notice: 'Accessories car was successfully updated.' }
        format.json { render :show, status: :ok, location: @accessories_car }
      else
        format.html { render :edit }
        format.json { render json: @accessories_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessories_cars/1
  # DELETE /accessories_cars/1.json
  def destroy
    @accessories_car.destroy
    respond_to do |format|
      format.html { redirect_to accessories_cars_url, notice: 'Accessories car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accessories_car
      @accessories_car = AccessoriesCar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def accessories_car_params
      params.require(:accessories_car).permit(:name)
    end
end
