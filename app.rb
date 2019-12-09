require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end
  
  get '/square/:number' do
    (params[:number].to_i**2).to_s
  end
  
  get '/say/:number/:phrase' do
    output = ""
    params[:number].to_i.times do
      output << params[:phrase]
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.values.join(" ")+"."
  end
  
  get '/:operation/:number1/:number2' do
    params[:number1].to_i + params[:number2].to_i if params[:operation] == "add"
  end

end