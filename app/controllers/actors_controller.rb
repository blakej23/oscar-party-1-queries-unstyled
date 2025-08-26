Class ActorsController < ApplicationController

  def index


    render({ :template => "actors_templates/index"})
  end

  def show



    render({ :template => "actors_templates/show"})

  end

end
