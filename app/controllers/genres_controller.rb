class GenresController < ApplicationController
  def index
    @genres = Genre.all
  end

  def create
    @genre = Genre.new(post_params(:name))
    if @genre.save
      redirect_to genre_path(@genre)
    else
      redirect_to new_genre_path
    end
  end

  def new
    @genre = Genre.new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(post_params(:name))
    redirect_to genre_path(@genre)
  end

  private

  def post_params(*args)
    params.require(:genre).permit(*args)
  end
end
