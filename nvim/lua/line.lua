local lualine = require "lualine"

local config = {
    options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = "",
        section_separators = "",
    },
    sections = {
        lualine_a = {{
            "mode",
            -- separator = { left = '', right = '' },
            separator = { left = '', right = '' },
        }},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
    },
}

-- Inserts a component to left section (lualine_c)
local function insert_l(comp)
    table.insert(config.sections.lualine_c, comp)
end

-- Inserts a component to right section (lualine_x)
local function insert_r(comp)
    table.insert(config.sections.lualine_x, comp)
end

insert_l "filename"
insert_l "location"
insert_l "progress"

insert_r "fileformat"
insert_r "encoding"
insert_r "filetype"

lualine.setup(config)
