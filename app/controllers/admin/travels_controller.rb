class Admin::TravelsController < AdminController
  before_action :set_admin_travel, only: [:show, :edit, :update, :destroy]
  #load_and_authorize_resource

  # GET /admin/travels
  # GET /admin/travels.json
  def index
    # authorize! :admin, Travel
    @admin_travels = Travel.all
  end

  # GET /admin/travels/1
  # GET /admin/travels/1.json
  def show
  end

  # GET /admin/travels/new
  def new
    @admin_travel = Travel.new
  end

  # GET /admin/travels/1/edit
  def edit
  end

  # POST /admin/travels
  # POST /admin/travels.json
  def create
    @admin_travel = Travel.new(admin_travel_params)

    respond_to do |format|
      if @admin_travel.save
        format.html { redirect_to @admin_travel, notice: 'Travel was successfully created.' }
        format.json { render :show, status: :created, location: @admin_travel }
      else
        format.html { render :new }
        format.json { render json: @admin_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/travels/1
  # PATCH/PUT /admin/travels/1.json
  def update
    respond_to do |format|
      if @admin_travel.update(admin_travel_params)
        format.html { redirect_to @admin_travel, notice: 'Travel was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_travel }
      else
        format.html { render :edit }
        format.json { render json: @admin_travel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/travels/1
  # DELETE /admin/travels/1.json
  def destroy
    @admin_travel.destroy
    respond_to do |format|
      format.html { redirect_to admin_travels_url, notice: 'Travel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_travel
      @admin_travel = Travel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_travel_params
      params.require(:admin_travel).permit(:name, :description, :day)
    end
end
