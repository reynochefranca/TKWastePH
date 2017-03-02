class Manifests::CategoriesController < ApplicationController
  def index
    if params[:q] && params[:q].reject { |k, v| v.blank? }.present?
      @search = Category.search(params[:q])
      # Joining Nested Associations (Multiple Level)
      @categories = @search
                        .result(distinct: true)
    else
      @search = Category.search
      @categories = []
    end
  end
end
