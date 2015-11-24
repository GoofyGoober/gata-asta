class OperasController < ApplicationController
  def index
    @operas = Opera.all
  end
  def show
    @opera = Opera.find params[:id]
  end
end