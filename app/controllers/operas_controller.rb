class OperasController < ApplicationController
  def index
    @operas = Opera.all.order(:archive_index)
  end
  def show
    @opera = Opera.find params[:id]
  end
end