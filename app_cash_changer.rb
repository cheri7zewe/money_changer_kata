require "sinatra"
require_relative "cash_changer.rb"

get "/" do
	erb :get_change_required	
end

post "/get_change" do 
	input_cents = params[:cents].to_i
	return_cents = generate_change(input_cents)
	"Your change is #{return_cents}"
end