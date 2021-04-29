class Api::BlurbsController < ApplicationController
  def random
    @blurb = Blurb.all.sample
    render "index.json.jb"
  end

  def create
    @blurb = Blurb.new(
      location: params[:location],
      fact: params[:blurb]
    )
    @blurb.save
    render "show.json.jb"
  end

  def update
    @blurb = Blurb.find_by(id: params[:id])
    @blurb.location = params[:location] || @blurb.location
    @blurb.fact = params[:fact] || @blurb.fact
    @blurb.image_url = params[:image_url] || @blurb.image_url
    @blurb.save
    render "show.json.jb"
  end

  def destroy
    blurb = Blurb.find_by(id: params[:id])
    blurb.destroy
    render json: {message: "Blurb Deleted"}
  end
end
