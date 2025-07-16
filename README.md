# Gemini Neovim Configuration ♊

This is a modern Neovim configuration designed to provide a full-featured, IDE-like experience right out of the box. It's built to be fast, intelligent, and intuitive.

This entire configuration was crafted using **Gemini 2.5 PRO**, demonstrating the power of AI in crafting sophisticated development environments.

***

## ✨ Features

* **Fast Plugin Management**: Uses `lazy.nvim` for lightning-fast startup and on-demand loading of plugins.
* **Code Intelligence**: Deep language integration with `nvim-lspconfig` for autocompletion, go-to-definition, finding references, and inline diagnostics.
* **Powerful Fuzzy Finding**: `Telescope` for instantly finding files, text, buffers, and more.
* **Sleek UI**: A beautiful, modern interface powered by the `tokyonight` colorscheme and an informative `lualine` status bar.
* **Visual Debugging**: A full-featured debugger for multiple languages using `nvim-dap` and `nvim-dap-ui`.
* **Git Integration**: See git status directly in the editor gutter with `gitsigns.nvim`.
* **AI Assistance**: Advanced code suggestions and completions from GitHub Copilot.
* **Pre-configured Languages**: Out-of-the-box support for Python, Go, Rust, and Node.js (JavaScript/TypeScript).

***

## 🚀 Installation

1.  **Prerequisites**:
    * [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) version `0.9.0` or higher.
    * `git` for cloning and plugin management.
    * A [Nerd Font](https://www.nerdfonts.com/font-downloads) installed and configured in your terminal for icons to render correctly.

2.  **Clone the configuration**:
    ```sh
    # Back up your existing configuration (if any)
    mv ~/.config/nvim{,.bak}

    # Clone this repository
    git clone [https://github.com/adolfojmnz/nvim-gemini.git](https://github.com/adolfojmnz/nvim-gemini.git) ~/.config/nvim
    ```

3.  **Launch Neovim**:
    Open Neovim. The plugins will be automatically installed on the first run.
    ```sh
    nvim
    ```

***

## ⌨️ Keybindings

The `<leader>` key is set to `Space`.

### Telescope (Fuzzy Finding)

| Keybinding      | Description            |
| :-------------- | :--------------------- |
| `<leader>ff`    | Find Files             |
| `<leader>fg`    | Find Text (Live Grep)  |
| `<leader>fb`    | Find Open Buffers      |
| `<leader>fh`    | Find Help Tags         |

### Debugging (DAP)

| Keybinding      | Description            |
| :-------------- | :--------------------- |
| `<leader>db`    | Toggle Breakpoint      |
| `<F5>`          | Continue Execution     |
| `<F10>`         | Step Over              |
| `<F11>`         | Step Into              |
| `<F12>`         | Step Out               |

### Window Management

| Keybinding      | Description                       |
| :-------------- | :-------------------------------- |
| `<C-h/j/k/l>`   | Move to window left/down/up/right |
| `<leader>e`     | Toggle File Explorer              |
