local telescope = require('telescope')
telescope.setup {
  defaults = {
    layout_config = {
      width = 0.9,
      preview_cutoff = 120,
      preview_width = 0.6,
    },
  },
}
