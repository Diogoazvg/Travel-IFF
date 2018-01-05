class Admin::StudentEventsController < ApplicationController
  before_action :set_admin_student_event, only: [:show, :edit, :update, :destroy]

  # GET /admin/student_events
  # GET /admin/student_events.json
  def index
    @admin_student_events = StudentEvent.all
  end

  # GET /admin/student_events/1
  # GET /admin/student_events/1.json
  def show
  end

  # GET /admin/student_events/new
  def new
    @admin_student_event = StudentEvent.new
  end

  # GET /admin/student_events/1/edit
  def edit
  end

  # POST /admin/student_events
  # POST /admin/student_events.json
  def create
    @admin_student_event = StudentEvent.new(admin_student_event_params)

    respond_to do |format|
      if @admin_student_event.save
        format.html { redirect_to :back, notice: 'Student event was successfully created.' }
        format.json { render :show, status: :created, location: @admin_student_event }
      else
        format.html { render :new }
        format.json { render json: @admin_student_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/student_events/1
  # PATCH/PUT /admin/student_events/1.json
  def update
    respond_to do |format|
      if @admin_student_event.update(admin_student_event_params)
        format.html { redirect_to @admin_student_event, notice: 'Student event was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_student_event }
      else
        format.html { render :edit }
        format.json { render json: @admin_student_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/student_events/1
  # DELETE /admin/student_events/1.json
  def destroy
    @admin_student_event.destroy
    respond_to do |format|
      format.html { redirect_to admin_student_events_url, notice: 'Student event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_student_event
      @admin_student_event = StudentEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_student_event_params
      params.require(:student_event).permit(:student_id, :event_id)
    end
end
