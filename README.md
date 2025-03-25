# ✨ Dotfiles 🛠️

My personal dotfiles for development environment setup, focusing on Neovim, terminal multiplexing, and productivity. 🚀

## 🔍 Overview

This repository contains configuration files for:

- **Neovim** 📝: Text editor built on Vim with modern features
- **Wezterm** 💻: GPU-accelerated terminal emulator
- **Zellij** 📊: Terminal multiplexer (alternative to tmux)
- **Starship** 🚀: Cross-shell prompt

## ✨ Inspiration

These configurations are heavily inspired by [Lanre Adelowo's dotfiles](https://github.com/adelowo/dotfiles). 🙏


## 🔧 Neovim Configuration

The Neovim setup is based on [NVChad](https://nvchad.com/) with customizations. It includes:

- 🧠 LSP configuration for code intelligence
- 🎨 Treesitter for better syntax highlighting
- 🧰 Various plugins for productivity enhancements
- ⌨️ Custom keybindings

### Plugins

- **aerial.lua**: Code outline window for skimming and quick navigation
- **barbecue.lua**: Visual Studio Code inspired breadcrumbs for Neovim
- **comment.lua**: Smart and powerful comment plugin with treesitter support
- **crates.lua**: Plugin for managing crates.io dependencies in Rust projects
- **debug.lua**: Debugging support via nvim-dap with Go integration
- **go.lua**: Modern Go plugin with treesitter, LSP and DAP debugger integration
- **hardtime.lua**: Plugin to help build better Vim habits by restricting inefficient movements
- **hover.lua**: Framework for context-aware hover providers (similar to LSP hover)
- **markdown.lua**: Markdown preview functionality in the browser
- **navic.lua**: Statusline/winbar component showing code context with LSP
- **neotest.lua**: Framework for interacting with tests for multiple languages
- **none.lua**: null-ls replacement for injecting LSP diagnostics and code actions
- **nvim-cmp.lua**: Completion engine with snippet support
- **nvim-snippets.lua**: Snippet support using native Neovim snippets
- **rayso.lua**: Create beautiful code screenshots directly from Neovim
- **snacks.lua**: Dashboard, file explorer, and zen mode functionality
- **surround.lua**: Plugin for easily managing surrounding pairs (brackets, quotes, etc.)
- **tree-sitter.lua**: Syntax highlighting and code analysis with treesitter

## 💻 Terminal Setup

- **Wezterm** ⚡: Modern terminal emulator with GPU acceleration and Lua configuration
- **Zellij** 📋: Terminal multiplexer that provides window management, panes, tabs, and session management

## 🚀 Usage

1. Install the required tools according to their official instructions:
   - [Wezterm](https://wezterm.org/) 💻
   - [Zellij](https://zellij.dev/) 📋
   - [Neovim](https://neovim.io/) 📝
   - [Starship](https://starship.rs/) 🚀

2. Clone this repository:
   ```bash
   git clone https://github.com/calebikhuohon/dotfiles.git
   ```

3. Copy the configuration to your OS's config dir (e.g `~/.config` on mac/linux). ✅

