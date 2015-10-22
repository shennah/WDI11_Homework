require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @x = params[:x].to_f
  @y = params[:y].to_f
  @op = params[:op]

  # @result = case params[:op]
  #   when '+' then @x + @y
  #   when '-' then @x - @y
  #   when '*' then @x * @y
  #   when '/' then @x / @y
  #   else
  #     nil
  #   end

  @result = nil

  # "- + * /".split
  # ["-", "+", "*", "/"]
  # %w[- + * /]

  if %w[- + * /].include?(@op)
    if @x && @y
      @result = @x.send(@op, @y)
    end
  end

  erb :calc
end