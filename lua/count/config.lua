---@class count.Config: count.Opts
local M = {}

-- Define the class for options
---@class count.Opts
---@field count_all boolean
---@field filetypes string[]

-- Define the defaults table with explicit typing
---@type count.Opts
local defaults = {
    count_all = true,
    filetypes = {},
}

---@type count.Opts
M.opts = nil

---@param opts count.Opts 
function M.setup(opts)
    M.opts = vim.tbl_extend('force', defaults, opts or {});
end

return M
