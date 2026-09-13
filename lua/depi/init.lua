require("depi.set")
require("depi.remap")
require("depi.packer")

-- Set the spellfile to the custom dictionary
vim.opt.spellfile = vim.fn.stdpath("config") .. "/spell/en.utf-8.add"

-- Function to check the first line for '::setlocal makeprg' and run the command
local function check_first_line_and_run_command()
    local first_line = vim.api.nvim_buf_get_lines(0, 0, 1, false)[1]

    if first_line:find("::setlocal makeprg") then
        local command = first_line:match("::(.*)")

        if command then
            vim.cmd(command)

            vim.notify("Executed command: " .. command, vim.log.levels.INFO)
        end
    end
end

-- Create an autocommand to trigger the function when a buffer is read or a new file is created
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
    pattern = "*",
    callback = check_first_line_and_run_command
})
