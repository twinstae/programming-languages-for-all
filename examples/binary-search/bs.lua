---@param array number[] 정렬된 number array table
---@param target number 찾으려는 숫자
local function binary_search(array, target)
	local function go(left, right)
		if left > right then
			return -1
		end
		local mid = math.floor((right + left) / 2)
		local value = array[mid]

		if target == value then
			return mid
		elseif target < value then
			return go(left, mid - 1)
		else
			return go(mid + 1, right)
		end
	end
	return go(1, #array)
end

return binary_search
