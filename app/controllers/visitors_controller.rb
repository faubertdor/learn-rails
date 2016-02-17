class VisitorsController < ApplicationController
  def new
    @visitor = Visitor.new
  end
  
  def create
    @visitor = Visitor.new(secure_params)
    if @visitor.valid?
      @visitor.subscribe
      redirect_to root_url, notice: "Signed up with #{@visitor.email}!"
    else
      render :new
    end
  end
  
  private
    def secure_params
      params.require(:visitor).permit(:email)
    end
  
end