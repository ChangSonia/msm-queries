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

  def youngest
    director_sort = Director.where.not(dob: nil).order(dob: :dsc)

    @director_youngest = director_sort.first

    render({:template => "director_templates/youngest"})
  end


  def eldest
    director_sort = Director.where.not(dob: nil).order(dob: :asc)

    @director_eldest = director_sort.first
    
    render({:template => "director_templates/eldest"})
  end
end
