class MoviesController < ApplicationController
  def index
    render({:template => "movie_templates/list"})
  end
  
  def show
    the_id = params.fetch(:an_id)

    matching_records = Movie.where({:id => the_id}) # is a relationship, must convert into item to fetch item from the item

    @the_movie = matching_records.at(0)

    render({:template => "movie_templates/details"})
  end
end
