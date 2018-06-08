local mod = ...

local cnames = {
	"new",
	"init",
	"install",
	"deps",
	"list",
	"search",
	"purge",
	"help",
	"pack",
}

local commands = {}

for _, c in ipairs(cnames) do
	commands[c] = require(mod .. "." .. c)
end

return { names = cnames, modules = commands }
