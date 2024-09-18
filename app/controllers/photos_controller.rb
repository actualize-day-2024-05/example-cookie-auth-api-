class PhotosController < ApplicationController
  def index
    if current_user
      render json: [{ id: 1, name: "First" }, { id: 2, name: "Second" }]
    else
      render json: []
    end
  end
end
