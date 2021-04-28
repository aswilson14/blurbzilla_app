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

  def destroy
    blurb = Blurb.find_by(id: params[:id])
    blurb.destroy
    render json: {message: "Blurb Deleted"}
  end
end
