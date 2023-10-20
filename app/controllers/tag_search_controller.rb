class TagSearchController < ApplicationController

  def search
    @model = Book
    @word = params[:content]
    @books = Book.where("tag LIKE?", "%#{@word}%")
    render "tag_search/tagsearch"
  end
end