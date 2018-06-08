local mod = ...

local cnames = {
	"new",
	"init",
	"install",
	"list",
	"search",
	"purge",
	"lua",
	"help",
}

local commands = {}

for _, c in ipairs(cnames) do
	commands[c] = require(mod .. "." .. c)
end

return { names = cnames, modules = commands }
