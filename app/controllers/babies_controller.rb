class BabiesController < ApplicationController
  def index

  end

  def new
    @baby = Baby.new
  end

  def create
    raise params.to_yaml
    @baby = Baby.new params["baby"]
  end
end
