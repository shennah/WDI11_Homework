class SecretNumberController < ApplicationController
  def index
    # just render the template

    @number = params[:number]

    if @number
    end
  end

  def guess
    actual_number = 5
    if params[:number].to_i == actual_number
      # PRINT "YOU WIN"
    else
      # PRINT "WRONG GUESS"
    end
  end
end
