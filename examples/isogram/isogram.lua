---@param s string
---@return boolean
local function is_isogram(s)
    local seen = {}
    for c in s:lower():gmatch "%a" do
        if seen[c] then
            return false
        else
            seen[c] = true
        end
    end
    return true
end

return is_isogram
