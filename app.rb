require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @rev_name = params[:name].reverse
    "#{@rev_name}"
  end

  get '/square/:number' do
    @sum =params[:number].to_i**2
   "#{@sum}"
  end

  get '/say/:number/:phrase' do
    repeat = ''
  	params[:number].to_i.times do
  		repeat += params[:phrase]
  	end
  	repeat
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      sum = (num1 + num2).to_s
    when 'subtract'
      sum = (num1 - num2).to_s
    when 'multiply'
      sum = (num1 * num2).to_s
    when 'divide'
      sum = (num1 / num2).to_s
    end
    sum
  end

end