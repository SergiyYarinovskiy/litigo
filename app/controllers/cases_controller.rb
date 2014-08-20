class CasesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @cases = Case.all
  end

  def show
    @case = Case.find params[:id]
    @incident = @case.incident unless @case.nil?
  end

  def edit
    @case = Case.find params[:id]
    @incident = @case.incident unless @case.nil?
  end

  def new
    @case = Case.new
  end

  def update
    @case = Case.find(params[:id])

    if @case.update(case_params)
      redirect_to @case
    else
      redirect_to edit_case_path(@case)
    end
  end

  def create
    @case = Case.new(case_params)
    if @case.save
      redirect_to @case
    else
      redirect_to new_case_path
    end
  end

  private
  def case_params
    params.require(:case).permit(:name, :number, :doc_number, :judge, :court, :plaintiff, :defendant,
                                 :corporation, :status, :creation_date, :date_closed, :date_closed,
                                 :main_type, :sub_type, :description)
  end
end
