class ActorsController < ApplicationController
  def index
    render({:template => "actor_templates/list"})
  end
  
  def show
    the_id = params.fetch(:an_id)

    matching_records = Actor.where({:id => the_id}) # is a relationship, must convert into item to fetch item from the item

    @the_actor = matching_records.at(0)

    render({:template => "actor_templates/details"})
  end
end
