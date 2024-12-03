local function insert(str, pos, infix)
    local first = string.sub(str, 0, pos-1)
    local second = string.sub(str, pos, #str)
    return first .. infix .. second
end

print(insert("hello world", 1, "start: "))
print(insert("hello world", 7, "small "))
