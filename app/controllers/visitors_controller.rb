class VisitorsController < ApplicationController
  def new
    @owner = Owner.new
    flash.now[:notice] = "Welcome!"
  end
  
end