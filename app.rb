require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @rev_name = params[:name]
    "#{@rev_name.reverse}"
  end 

  get '/square/:number' do 
    @sqr_num = params[:number]
    "#{@sqr_num.to_i**2}"
  end 

  get '/say/:number/:phrase' do 
    go = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times { go += "#{@phrase}\n" }
    go
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
      word = params.values.join(" ")
      "#{word}."
  end  

  get '/:operation/:number1/:number2' do 
       @operater = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i
     case @operater
     when "add"
        "#{@num1 + @num2}"
     when "subtract"
      "#{@num1 - @num2}"
     when "multiply"
      "#{@num1 * @num2}"
     when "divide"
      "#{@num1 / @num2}"
     end 
     
  end 
  
end