local function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n-1)
    end
end

print("Enter a number: ")
local a = io.read("*n")
if a < 0 then
    print("a must be >= 0")
else
    print(fact(a))
end
