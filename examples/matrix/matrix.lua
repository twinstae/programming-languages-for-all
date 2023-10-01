local function map(table, f)
    local t = {}
    for k, v in pairs(table) do t[k] = f(v) end
    return t
end

local function split(s, sep)
    if sep == nil then sep = "%s" end
    local t = {}
    for str in string.gmatch(s, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    return t
end

return function(s)
    ---@type number[][]
    local rows = map(split(s, "\n"), function(line)
        return map(split(line, " "), function(n) return tonumber(n) end)
    end)

    return {
        --- @return number[]
        row = function(index) return rows[index] end,
        --- @return number[]
        column = function(index)
            return map(rows, function(row) return row[index] end)
        end
    }
end
