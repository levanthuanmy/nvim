require('lualine').setup {
  options = {
    theme = "onedark",
    -- ... the rest of your lualine config
  },
  sections = {
    lualine_c = {
      {
        'filename',
        file_status = true,
        path = 1,
        symbols = {
          modified = '[Modified]', -- Text to show when the file is modified.
          readonly = '[Read Only]', -- Text to show when the file is non-modifiable or readonly.
          unnamed = '[No Name]', -- Text to show for unnamed buffers.
          newfile = '[New File]', -- Text to show for new created file before first writting
        },
      },
    }
  }

}
