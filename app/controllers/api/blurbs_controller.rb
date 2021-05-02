class Api::BlurbsController < ApplicationController
  def random
    @blurb = Blurb.all.sample
    render "index.json.jb"
  end

  def create
    @blurb = Blurb.new(
      location: params[:location],
      fact: params[:blurb],
      image_url: "https://149360821.v2.pressablecdn.com/wp-content/uploads/2020/05/Dino-No-Internet.jpg"
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
