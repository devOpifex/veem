# veem.nvim

A monochrome Neovim colorscheme with subtle accents, inspired by [lackluster.nvim](https://github.com/slugbyte/lackluster.nvim).

## Features

- Monochrome base with intentional color accents
- Treesitter and LSP semantic token support
- Plugin support: Telescope, nvim-tree, nvim-cmp, gitsigns
- Soft on the eyes, easy to read

### Accent Colors

| Syntax Element | Color |
|----------------|-------|
| Branching (`if`, `else`, `switch`, `for`, `while`) | `#789978` |
| Return keyword | `#7788AA` |
| Directives (`#include`, `@decorator`) | `#7A7A7A` |
| Strings | `#708090` |
| Function definitions | `#deeeed` |

## Installation

### lazy.nvim

```lua
{
    "yourusername/veem.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("veem")
    end,
}
```

### packer.nvim

```lua
use {
    "yourusername/veem.nvim",
    config = function()
        vim.cmd.colorscheme("veem")
    end,
}
```

### Manual

Clone to your Neovim packages directory:

```bash
git clone https://github.com/yourusername/veem.nvim \
  ~/.local/share/nvim/site/pack/plugins/start/veem.nvim
```

Then add to your config:

```lua
vim.cmd.colorscheme("veem")
```

## Configuration

```lua
-- Optional: enable transparent background
require("veem").setup({
    transparent = true,
})
vim.cmd.colorscheme("veem")
```

## Supported Plugins

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)

## License

MIT
