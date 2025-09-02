def puissance(a,b):
	if not type(a) or not type(b) is int:
		raise TypeError("Only integers are allowed")
	return a**b
