class Api::BlurbsController < ApplicationController
  def random
    @blurb = Blurb.all.sample
    render "index.json.jb"
  end

  def create
    @blurb = Blurb.new(
      location: params[:location],
      fact: params[:fact]
    )
    @blurb.save
    render "show.json.jb"
  end
end
