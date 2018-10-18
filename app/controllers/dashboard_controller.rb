class DashboardController < ApplicationController
  def index
    @categories = Category.all
  end

  def search
    categories = {}
    Category.all.each do|x|
      categories.merge!({x.name => x.books.where("name ILIKE ?", "#{params[:q]}%").map{|y| {name: y.name }}})
    end
    render json: categories
  end

  def category_list
    categories = Category.all.map do |cat|
      {
        listLocation: cat.name,
        header: cat.name.pluralize
      }
    end
    render json: categories
  end
end
