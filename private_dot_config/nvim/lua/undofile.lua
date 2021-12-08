--@param dirname(string) : the current directory
local check_dir = function (dirname)
	local f = io.open(dirname, "r+");
	return f
end

local h = "~/.config/nvim/dne"
print(check_dir(h))
