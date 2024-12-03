local num = {
    "one",
    "two",
    "three",
    "four",
    "five",
    "six",
    "seven",
    "eight",
    "nine"
}
local function calibration(path)
    local sum = 0
    local numbers = ""
    for line in io.lines(path) do
        local mod_line = line
        print(mod_line)
        for i = 1, #num do
            mod_line = string.gsub(mod_line, num[i], i)
            print("mod_line in for: ", mod_line)
        end
        print("mod_line after for: ", mod_line)
        numbers = string.gsub(mod_line, "%D", "")
        numbers = string.sub(numbers, 1, 1) .. string.sub(numbers, #numbers, #numbers)
        sum = sum + tonumber(numbers)
        print("sum: ", sum)
    end
    return sum
end

local file = "test.txt"
print(calibration(file))
