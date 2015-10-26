require 'pp'

class IdeasController < ApplicationController

  # GET /ideas
  def index
    @ideas = Idea.all.to_a

    # NB: Different ways to debug:
    #pp @ideas
    #logger.debug @ideas
    #raise @ideas.inspect
  end

  # GET /ideas/new
  def new
    @idea = Idea.new    # used to create the form
  end

  # POST /ideas
  def create
    # "idea"=>{"name"=>"XYZ"}
    @idea = Idea.new(idea_params)   # create object in memory

    if @idea.save                   # run INSERT command in database
      redirect_to ideas_url
    else
      render :new                   # render the new template
    end
  end

  private

  def idea_params
    # .require makes sure there's {"idea" => { ... }} in params
    # .permit means all the idea fields except "name" will be filtered out
    params.require(:idea).permit(:name)
  end
end