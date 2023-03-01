
local function status_line()
    local file_path = "%F"
    local file_name = "%-.20t"
    local modified = " %-m"
    local file_type = " %y"
    local right_align = "%="
    local position = "%c:%l(%L)"

    return string.format(
        "%s%s%s%s",
        file_name,
        --file_path,
        modified,
        file_type,
        right_align,
        position
    )
end

vim.opt.statusline = status_line()



