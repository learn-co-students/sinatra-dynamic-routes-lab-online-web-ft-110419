# frozen_string_literal: true

require_relative 'config/environment'

class App < Sinatra::Base
    get '/reversename/:name' do
        params[:name].reverse
    end

    get '/square/:number' do
        @number = params[:number].to_i
        (@number**2).to_s
    end

    get '/say/:number/:phrase' do
        @number = params[:number].to_i
        @phrases = Array.new(@number, params[:phrase])
        erb :phrases
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
        @words = [
            params[:word1],
            params[:word2],
            params[:word3],
            params[:word4],
            params[:word5]
        ]
        erb :words
    end

    get '/:operation/:number1/:number2' do
        @operation = params[:operation]
        @number1 = params[:number1].to_i
        @number2 = params[:number2].to_i
        @result = case @operation
                  when 'add'
                      @number1 + @number2
                  when 'subtract'
                      @number1 - @number2
                  when 'multiply'
                      @number1 * @number2
                  when 'divide'
                      @number1 / @number2
                  else
                      'Error'
                  end
        erb :operations
    end
end
