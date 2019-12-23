require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @sqr = @num ** 2
    @sqr.to_s
  end

  get '/say/:number/:phrase' do
    @number, @phrase = params[:number].to_i, params[:phrase]
    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = 5.times.collect{|i| params["word#{i+1}".to_sym] }
    @words.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    math = {'add'=> :+, 'subtract'=> :-, 'multiply'=> :*, 'divide'=> :/}
    @num1, @num2 = params[:number1].to_i, params[:number2].to_i
    @op = math[params[:operation]]
    @eq = @num1.send(@op, @num2)
    @eq.to_s
  end
end