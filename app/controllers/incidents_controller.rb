class IncidentsController < ApplicationController
  before_filter :authenticate_user!
end
