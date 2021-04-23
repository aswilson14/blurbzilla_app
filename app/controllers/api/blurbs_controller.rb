class Api::BlurbsController < ApplicationController
  def random
    @blurb = Blurb.all.sample
    render "index.json.jb"
  end
end
