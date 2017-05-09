class Admin::VehiclesController < ApplicationController
  before_action :set_admin_vehicle, only: [:show, :edit, :update, :destroy]

  # GET /admin/vehicles
  # GET /admin/vehicles.json
  def index
    @admin_vehicles = Admin::Vehicle.all
  end

  # GET /admin/vehicles/1
  # GET /admin/vehicles/1.json
  def show
  end

  # GET /admin/vehicles/new
  def new
    @admin_vehicle = Admin::Vehicle.new
  end

  # GET /admin/vehicles/1/edit
  def edit
  end

  # POST /admin/vehicles
  # POST /admin/vehicles.json
  def create
    @admin_vehicle = Admin::Vehicle.new(admin_vehicle_params)

    respond_to do |format|
      if @admin_vehicle.save
        format.html { redirect_to @admin_vehicle, notice: 'Vehicle was successfully created.' }
        format.json { render :show, status: :created, location: @admin_vehicle }
      else
        format.html { render :new }
        format.json { render json: @admin_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/vehicles/1
  # PATCH/PUT /admin/vehicles/1.json
  def update
    respond_to do |format|
      if @admin_vehicle.update(admin_vehicle_params)
        format.html { redirect_to @admin_vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_vehicle }
      else
        format.html { render :edit }
        format.json { render json: @admin_vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/vehicles/1
  # DELETE /admin/vehicles/1.json
  def destroy
    @admin_vehicle.destroy
    respond_to do |format|
      format.html { redirect_to admin_vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_vehicle
      @admin_vehicle = Admin::Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_vehicle_params
      params.require(:admin_vehicle).permit(:seat, :price, :order_number, :travel_id, :bus_company_id)
    end
end
