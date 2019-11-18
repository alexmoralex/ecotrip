class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
  @trip = current_user.trips.new(trip_params)
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      redirect_to trips_path
    else
      render :edit, alert: "Lo siento, corrija por favor"
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path, notice: "Viaje eliminado"
  end

  private
  def trip_params
    params.require(:trip).permit(:nombre, :descripcion, :tarifa, :duracion, :imagen, images: [])
  end
end
