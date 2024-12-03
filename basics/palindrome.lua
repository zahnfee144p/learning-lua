local function ispali(str)
    local _ = string.reverse(str)
    return str == _
end

print(ispali("step on no pets"))
print(ispali("banana"))
