class DirectorsController < ApplicationController
  def index
    render({:template => "director_templates/list"})
  end
  
  def show
    the_id = params.fetch(:an_id)

    matching_records = Director.where({:id => the_id}) # is a relationship, must convert into item to fetch item from the item

    @the_director = matching_records.at(0)

    render({:template => "director_templates/details"})
  end
end
