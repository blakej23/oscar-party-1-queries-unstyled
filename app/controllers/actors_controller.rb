class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ :template => "actors_templates/index"})
  end

  def show
    the_id = params.fetch("path_id")

    matching_actors = Actor.where({ :id => the_id })

    @the_actor = matching_actors.at(0)

    render({ :template => "actors_templates/show"})

  end

end
