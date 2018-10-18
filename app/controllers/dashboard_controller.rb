class DashboardController < ApplicationController
  def index
    @categories = Category.all
  end

  def search
    categories = {}
    Category.all.each do |category|
      categories.merge!({category.name => category.books.where("name ILIKE ?", "#{params[:q]}%").map{|book| {name: book.name }}})
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
