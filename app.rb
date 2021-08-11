require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    user_name = params[:name]
    user_name.reverse
  end 

  get "/square/:number" do
    number = params[:number].to_i
    square_number = number**2
    square_number.to_s
  end 

  get "/say/:number/:phrase" do
    result = ""
    params[:number].to_i.times do
      result << params[:phrase]
    end 
    result
  end 

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params.values.join(" ") + "."
  end 

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      result = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      result = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      result = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      result = params[:number1].to_i / params[:number2].to_i
    end 
    result.to_s
  end 

end