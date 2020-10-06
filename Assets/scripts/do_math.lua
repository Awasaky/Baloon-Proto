local function clamp_number(val, max, min) -- remember maximum is first!
	local new_max = max or 1
	local new_min = min or 0
	if val <= new_min then return new_min end
	if val >= new_max then return new_max end
	return val
end

local function lerp_number(coef, upper, bottom) -- remember upper is first!
	return bottom+(upper-bottom)*coef
end

local function rev_lerp_number(val, upper, bottom) -- remember upper is first!
	local new_upper = upper or 100 -- mean return percentage
	local new_bottom = bottom or 0
	return (val-new_bottom)/(new_upper-new_bottom)
end

local M = {
	clamp_number = clamp_number,
	lerp_number = lerp_number,
	rev_lerp_number = rev_lerp_number
}

return M