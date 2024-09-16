require("depi.set")
require("depi.remap")
require("depi.packer")

-- Set the spellfile to the custom dictionary
vim.opt.spellfile = vim.fn.stdpath("config") .. "/spell/en.utf-8.add"

-- Function to check the first line for '::' and run the command
local function check_first_line_and_run_command()
  -- Get the first line of the buffer
  local first_line = vim.api.nvim_buf_get_lines(0, 0, 1, false)[1]
  
  -- Check if the first line contains '::'
  if first_line:find("::") then
    -- Extract the command after '::'
    local command = first_line:match("::(.*)")
    
    if command then
      -- Execute the command
      vim.cmd(command)

       -- Notify the user that the command was run
      vim.notify("Executed command: " .. command, vim.log.levels.INFO)
    end
  end
end

-- Create an autocommand to trigger the function when a buffer is read or a new file is created
vim.api.nvim_create_autocmd({"BufReadPost", "BufNewFile"}, {
  pattern = "*",
  callback = check_first_line_and_run_command
})
