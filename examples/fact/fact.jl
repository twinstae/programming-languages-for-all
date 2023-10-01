fact(n) =
	if n < 1
		1
	else
		fact(n - 1) * n
	end

println("enter a number:")

number = parse(UInt64, readline())

if number > 65
	throw(DomainError(number, "cannot compute more than fact(65) overflow"))
end

if number < 0
	throw(DomainError(number, "argument must be nonnegative"))
end

println(fact(number))
