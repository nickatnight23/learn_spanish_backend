class Api::V1::CategoriesController < ApplicationController

    def index
        categories = Category.all
        # render json: CategorySerializer.new(categories)
        render:json => categories.to_json(:include => :topics)
    end
end

def show
    category = Category.find_by(id: params[:id])
    options = {
      include: [:topic]
    }
    render json: CategorySerializer.new(category, options)
  end