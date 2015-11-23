class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]

  # GET /attendances
  # GET /attendances.json
  def index
    @attendances = Attendance.all
  end

  # GET /attendances/1
  # GET /attendances/1.json
  def show
  end

  # GET /attendances/new
  def new
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances
  # POST /attendances.json
  def create
		if Event.find(session[:id_number])
		 	event = Event.find(params[:event_id])
			@student = Student.find_by_id_number(session[:id_number])		
			@attendance = @student.attendances.build(event: event)

		  respond_to do |format|
		    if @attendance.save
		      format.html {redirect_to events_path }
					format.js
		      format.json { render :show, status: :created, location: @attendance }
		    else
		      format.html { render :new }
		      format.json { render json: @attendance.errors, status: :unprocessable_entity }
		    end
		  end
		else
			respond_to do |format|
		      format.html {redirect_to events_path }
		  end
		
		end
  end

  # PATCH/PUT /attendances/1
  # PATCH/PUT /attendances/1.json
  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: 'Attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendances/1
  # DELETE /attendances/1.json
  def destroy
		event = @attendance.event
		@student = Student.find(session[:id])
    @attendance.destroy
    respond_to do |format|
      format.html {redirect_to events_path }
      format.json { head :no_content }
			format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_params
      params.require(:attendance).permit(:student_id, :event_id)
    end
end
