class DemoRequestsController < ApplicationController
  def new
    @demo_request = DemoRequest.new
  end

  def create
    @demo_request = DemoRequest.new(demo_request_params)

    if @demo_request.save
      redirect_to root_path, notice: 'Demo request was successfully created.'
    else
      render :new
    end
  end

  private

  def demo_request_params
    params.require(:demo_request).permit(:full_name, :email, :organization, :role, :areas_of_interest, :additional_notes)
  end
end
