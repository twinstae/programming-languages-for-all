local function factorial(n)
    if n == 0 or n == 1 then return 1 end

    return n * factorial(n - 1)
end

local function is_integer(n) return type(n) == "number" and math.floor(n) == n end

print("enter a number:")
local n = assert(io.read("*number"), "your input is not a valid number")

if n < 0 or not is_integer(n) then
    error("your input is not a non-negative number");
end

print(factorial(n))
