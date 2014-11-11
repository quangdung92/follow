class UploadsController < ApplicationController
  def new
    @upload = Upload.new
    

  end

  def create
    @upload = Upload.create(:image => params[:image])
    logger.debug "image: #{@upload.image}"
    if @upload.save
      render json: { message: "success" }, :status => 200
    else
      render json: { error: @upload.errors.full_messages.join(',')}, :status => 400
    end
  end
end
