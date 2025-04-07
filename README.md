# nvim

Config for NeoVim >=0.11.0

<img width="1312" alt="neovim" src="./assets/main.png">

### Plugins

- Package Manager - Lazy.nvim
- Finder, Filter, Previews - Telescope
- File Explorer - Nvim Tree
- Code highlighters - Treesitter
- Language things supporter (like go to defenition and etc) - LSP + Mason
- Formatter, Diagnostic (here we can define eslint, prettier, and etc) - Null-ls
- Terminal inside Neovim - ToggleTerm
- Autocomplete, suggests, snippets - CMP
- TUI Git - Lazygit
- None-ls - formater with pretterd and eslint

### How to install

```
npm install -g eslint_d prettierd
brew install ripgrep # support live grep in Telescope
brew install lazygit # support TUI Git
```

### How I'm using it

Space + ff - find files in project
Space + fg - live grep
Space + fb - show all buffers. Normal mode: dd will delete selected buffer
Space + fc - find available colorschemes
Space + n - file tree toggle
Space + h - toggle horizontal terminal
Space + v - toggle vertical terminal

### Structure

#### Configs

You can find here all configs for plugins.

#### Mappings

Usually I keep all keymaps here, but I have some techical debt, so that's why you can find keymaps in plugins.lua.

#### Init.lua

imports and initial configuration.

#### Plugins.lua

Lazy.nvim - All plugins are here.
