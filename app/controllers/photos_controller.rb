class PhotosController < ApplicationController
  before_action :authenticate_user!

  def create
    @place = Place.find(params[:place_id])
    @place.photos.create(photo_params.merge(user: current_user))
    redirect_to place_path(@place)
  end

  def destroy
    @place = Place.find(params[:place_id])
    @photo = Photo.find(params[:id])
    if @photo.user != current_user
      return render plain: 'Not Allowed', status: :forbidden
    end
    @photo.destroy
    redirect_to place_path
  end

  def index
    @place = Place.find(params[:place_id])
    @photo = Photo.picture.find(params[:id])

    render :json => @photo
  end

  private

  def photo_params
    params.require(:photo).permit(:caption, :picture)
  end
end
