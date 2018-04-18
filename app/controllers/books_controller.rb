class BooksController < ApplicationController
  def create
    Book.create(create_params)
    redirect_to backend02_rails_exam_index_path
  end

  def create_params
    params.require(:book).permit(:title, :price, :author_id)
  end
end
