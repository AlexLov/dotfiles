-- A function that applies passes the output of string.format to the print
-- function
---@param string string #template string
local function fprint(string, ...)
	print(string.format(string, ...))
end

-- A function that verifies if the plugin passed as a parameter is installed,
-- if it isn't it will be installed
---@param plugin string #the plugin, must follow the format `username/repository`
local function bootstrap(plugin)
	local _, _, plugin_name = string.find(plugin, [[%S+/(%S+)]])
	local plugin_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/" .. plugin_name
	if vim.fn.empty(vim.fn.glob(plugin_path)) ~= 0 then
		fprint("Couldn't find '%s', cloning new copy to %s", plugin_name, plugin_path)
		vim.fn.system({
			"git", "clone", "--depth", "1",
			"https://github.com/" .. plugin,
			plugin_path,
		})
	end
end


-- Bootstrap tangerine & plugins
bootstrap("lewis6991/impatient.nvim")
bootstrap("udayvir-singh/tangerine.nvim")
bootstrap("udayvir-singh/hibiscus.nvim")


-- it should be loaded before tangeringe as described in
-- https://github.com/udayvir-singh/tangerine.nvim#faq
require "impatient"

-- setup tangerine
require "tangerine".setup {
	compiler = {
		verbose = false,
		--hooks = { "oninit", "onload", "onsave" }
		hooks = { "onsave" }
	}
}
