class BooksController < ApplicationController
  def show
    if params[:id].match(/^(\d)+$/)
      @book = Book.find_by(id: params[:id])
    else
      @book = Book.find_by(name: params[:id])
    end
  end
end
