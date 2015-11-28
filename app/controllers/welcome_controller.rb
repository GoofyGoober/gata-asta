class WelcomeController < ApplicationController
  def index
    @pannellos = Pannello.all
    @operas = Opera.all
   
  end
end