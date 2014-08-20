class IncidentsController < ApplicationController
  before_filter :authenticate_user!

  def show
    if Incident.where(id: params[:id]).empty?
      redirect_to new_incident_path
    else
      @incident = Incident.find params[:id]
    end
  end

  def edit
    @incident = Incident.find params[:id]
  end

  def new
    @incident = Incident.new
  end

  def update
    @incident = Incident.find params[:id]

    if @incident.update(incident_params)
      redirect_to @incident
    else
      redirect_to edit_incident_path_path(@incident)
    end
  end

  def create
    @incident = Incident.new(incident_params)
    if @incident.save
      redirect_to @incident
    else
      redirect_to new_incident_path
    end
  end

  private
  def incident_params
    params.require(:case).permit(:date_of_incident, :statute_of_limitations, :liability, :alcohol,
                                 :weather_factor, :damage, :airbag, :speed)
  end
end
