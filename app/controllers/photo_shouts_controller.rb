class PhotoShoutsController < ApplicationController
  def create
    content = build_content
    shout = current_user.shouts.build(content: content)
    if shout.save
      redirect_to dashboard_path
    else
      redirect_to dashboard_path, alert: "Could not shout."
    end
  end

  private

  def build_content
    PhotoShout.new(photo_shout_params)
  end

  def photo_shout_params
    params.require(:photo_shout).permit(:image)
  end
end