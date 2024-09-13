---@class count.Counter 
local M = {}

---@type count.Opts
local opts

function M.setup()
    opts = require'count.config'.opts
    print(vim.inspect(opts))
end

function M.count()
end

return M
