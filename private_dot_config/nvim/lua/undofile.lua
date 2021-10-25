--@param dirname(string) : the current directory
local check_dir = function (dirname)
	local ok, _ = pcall(os.execute,"ls "..dirname.." 2>/dev/null")
	if not ok then
		return
	end
	-- local _ok, exit_code = pcall(os.execute, "echo $?")
	-- if not _ok then
		-- return
	-- end
	local exit_code = os.execute("echo $?")
	print(exit_code)
	if exit_code == 0 then
		print("This is not ok")
	end

end

local h = "~/.config/nvim/dne"
check_dir(h)
