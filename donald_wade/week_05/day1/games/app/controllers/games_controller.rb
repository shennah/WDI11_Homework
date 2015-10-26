require 'pp'
require 'data.rb'

class GamesController < ApplicationController
  def home
    @routes = Rails.application.routes.routes
  end

  def magic_8
    pp "hello I'm the magic 8 ball game and I'm running"
    @parameters = params
    @your_name = params['name']
    @your_question = params['question']

    # redirect_to answer
  end

  def answer
    list_of_answers = [
      "You're not actually being serious, are you?",
      'Blue.',
      'Without hesitation.',
      'Swallows and Amazons.',
      'On the twelfth of Never.',
      'I think maybe you ought to reconsider that question. Keystroke logging is enabled (just a friendly warning...)'
    ]
    pp "ehllo I'm the answer function"
    @my_parameters = params
    @your_name = @my_parameters[:name]
    if @my_parameters[:question]
      @your_question = @my_parameters[:question].downcase
    end
    @rand_answer = list_of_answers[rand(list_of_answers.length)]
    if @my_parameters[:guess]
      @guess = @my_parameters[:guess].to_i
      pp @guess
      @secret_number = rand(10) + 1
      if @secret_number == @guess
        @result = 'Please come and join us at the Chocolate Factory.'
      else @result = 'Your guess was incorrect. You lose. Goodbye.'
      end
    end
    if @my_parameters[:rps]
      @yourRPS = @my_parameters[:rps]
      pp @my_parameters[:rps]
      @response = "The answer is not #{@yourRPS}. I have fixed this game. You lose. You will always lose."
    end
  end

  def secret_number
    @guess = params

    pp "hello I'm the secret_number game and I'm running"
  end

  def rock_paper_scissors
    pp "hello I'm the rps game and I'm running"
  end
end
