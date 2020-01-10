require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @results = params[:number].to_i ** 2
    "#{@results}"
  end

  get '/say/:number/:phrase' do
    @phrase = ''
    params[:number].to_i.times do
      @phrase += params[:phrase]
    end
    @phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    # get the result from combining num 1 and num 2 based on the operation
    if operation == "add"
      results = (num1 + num2).to_s
    elsif operation == "subtract"
      results = (num1 - num2).to_s
    elsif operation == "multiply"
      results = (num1 * num2).to_s
    elsif operation == "divide"
      results = (num1 / num2).to_s
    end
  end
end
