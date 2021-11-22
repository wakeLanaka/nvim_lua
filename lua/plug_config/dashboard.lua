vim.g.dashboard_session_directory = '~/.config/nvim/session'

vim.g.dashboard_default_executive = 'telescope'
vim.g.dashboard_custom_footer = {''}

vim.g.dashboard_custom_section = {
    new_file = {
        description = {'  New file'},
        command = 'DashboardNewFile'
    },
    -- last_session = {
    --     description = {'  Last session'},
    --     command = 'SessionLoad'
    -- },
    find_history = {
        description = {'  Recent files'},
        command = 'DashboardFindHistory'
    },
    -- change_colorscheme = {
    --     description = {'  Colorscheme'},
    --     command = 'DashboardFindFile'
    -- },
    find_file = {
        description = {'  Find file'},
        command = 'DashboardFindFile'
    },
    find_word = {
        description = {'  Find word'},
        command = 'DashboardFindWord'
    },
}
vim.cmd[[
let g:dashboard_custom_footer = [ 
\"“If you can't explain it to a six year old, you don't understand it yourself.”― Albert Einstein",
\]
]]

vim.cmd [[
let g:dashboard_custom_header = [
\"",
\"",
\"",
\"       .-.      _______                             .  '  *   .  . '",
\"      {}``; |==|_______D                              .  * * -+-    ",
\"      / ('        /|\                             .    * .    '  *  ",
\"  (  /  |        / | \                                * .  ' .  .   ",
\"    \(_)_))      /  |  \                            *   *  .   .     ",
\"                                                     '   *          ",
\"",
\"",
\"",
\]
]]
