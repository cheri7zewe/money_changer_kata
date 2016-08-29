def generate_change(cents)
	change = {}

if cents >= 5
	change[:nickel] = 1
	cents = cents - 5
end

if cents >= 1
	change[:penny] = cents
end

	change
end