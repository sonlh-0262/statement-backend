class Api::CategoriesController < Api::BasesController
  def index
    categories = Category.select("categories.id, categories.id as value, categories.name as label").all
    render json: {
      categories: categories
    }, status: 200
  end
end
