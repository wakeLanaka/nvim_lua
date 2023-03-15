local api = vim.api
local cmd = vim.cmd
local fn = vim.fn

local M = {}

cmd("highlight AsciiBorder    guifg=#280068")
cmd("highlight Ascii          guifg=#280068 guibg=#3f007f")

local NVIM_VERSION = "NVIM " .. fn.system('nvim --version | head -n 1 | awk \'{print $2}\''):gsub("\n", "")

local function pad_str(padding, string)
    for _ = 1, padding do
        string = " " .. string
    end

    return string
end

local ascii = {
    "                            ",
    "__NVIM_VERSION__",
    "▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁",
    "",
    "Use Marks!",
    "",
    "Use (debug) Printer!",
    "",
    "Use { ctrl+l, a, ctrl+j, ctrl+k",
    "",
    "▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔",
}

local function reset_start_screen()
    cmd("enew")
    local buf = api.nvim_get_current_buf()
    local win = api.nvim_get_current_win()

    api.nvim_buf_set_option(buf, "modifiable", true)
    api.nvim_buf_set_option(buf, "buflisted", true)
    api.nvim_buf_set_option(buf, "buflisted", true)
    api.nvim_win_set_option(win, "colorcolumn", "80,100")
    api.nvim_win_set_option(win, "list", true)
end

M["set_ascii_bg"] = function()
    local height = api.nvim_get_option("lines")
    local width = api.nvim_get_option("columns")
    local ascii_rows = #ascii
    local ascii_cols = #ascii[1]
    local pad_cols = math.floor((width - ascii_cols) / 2)
    local win = api.nvim_get_current_win()
    local buf = api.nvim_create_buf(true, true)

    -- only display if there is enough space
    if height >= ascii_rows and width >= ascii_cols then
        for i, _ in ipairs(ascii) do
            if ascii[i] == "__NVIM_VERSION__" then
                -- center version number before padding it
                ascii[i] = pad_str(pad_cols, pad_str(math.ceil((ascii_cols - #NVIM_VERSION) / 2), NVIM_VERSION))
            elseif ascii[i] ~= "" then
                ascii[i] = pad_str(pad_cols, ascii[i])
            end
        end

        api.nvim_buf_set_lines(buf, 0, -1, false, ascii)

        api.nvim_buf_set_option(buf, "modified", false)
        api.nvim_buf_set_option(buf, "buflisted", false)
        api.nvim_buf_set_option(buf, "bufhidden", "wipe")
        api.nvim_buf_set_option(buf, "buftype", "nofile")
        api.nvim_buf_set_option(buf, "swapfile", false)
        api.nvim_win_set_option(win, "colorcolumn", "")
        api.nvim_win_set_option(win, "list", false)
        api.nvim_set_current_buf(buf)

        api.nvim_create_autocmd("InsertEnter,WinEnter", {
            pattern = "<buffer>",
            callback = reset_start_screen,
        })
    end
end

return M
