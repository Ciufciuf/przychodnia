class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
    @q = Doctor.ransack(params[:q])
    @wynik = @q.result
  end

  def search
    @q = Doctor.ransack(params["q"])
    puts @wynik = @q.result
    puts @wynik.inspect
    puts params[:q].class
    puts params["q"].class
  end

    def new
        @doctor = Doctor.new
    end

    def show
      @doctor = Doctor.find(params[:id])
      @clinic = Clinic.where("doctor_id = ?", params[:id])
  end

    def edit
        @doctor = Doctor.find(params[:id])
      end
   
    def create
        @doctor = Doctor.new(doctor_params)
       
        if @doctor.save
          redirect_to @doctor
        else
          render 'new'
        end
    end

    def update
        @doctor = Doctor.find(params[:id])
       
        if @doctor.update(doctor_params)
          redirect_to @doctor
        else
          render 'edit'
        end
      end

      def destroy
        @doctor = Doctor.find(params[:id])
        @doctor.destroy
     
        redirect_to doctors_path
      end

private
  def doctor_params
    params.require(:doctor).permit(:name, :spec, :address)
  end
end
