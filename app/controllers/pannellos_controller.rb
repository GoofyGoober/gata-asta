class PannellosController < ApplicationController
  def index
    @pannellos = Pannello.all
  end
  def show
    @pannello = Pannello.find params[:id]
  end
end