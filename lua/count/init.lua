---@class count 
local M = {}

vim.api.nvim_create_user_command('Count', function() require'count.counter'.count() end, {nargs = 0})

---@param opts count.Opts
function M.setup(opts)
    require'count.config'.setup(opts)
    require'count.counter'.setup()
end

return M
