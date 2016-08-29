require "sinatra"
require_relative "cash_changer.rb"

get "/" do
	erb :get_change_required	
end

post "/get_change" do 
	input_cents = params[:cents].to_i
	#{}"input_cents #{input_cents}"
	return_cents = generate_change(input_cents)
	"Your change is #{return_cents}"
end
