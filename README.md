# NeoVim Configuration

Welcome to my personalized NeoVim setup, meticulously designed to enhance productivity and ease of use across multiple programming languages. Each Lua configuration file in this repository is purpose-built to provide an intuitive and feature-rich coding environment.

### Supported Languages

This setup is tailored for development with the following languages, supported by their respective language servers and formatting tools:

- **JavaScript/TypeScript**: Enhanced support with `tsserver`, which provides completions and other language features. Code formatting is managed by Prettier, and diagnostics by ESLint.
- **Go**: Utilizes `gopls` for language features, with formatting by `gofumpt` and `goimports`, ensuring Go code adheres to the community style guidelines.

### Plugins Configuration (`/lua/plugins/`)

- `autopair.lua`: Automates bracket pairing to streamline coding.
- `bufferline.lua`: Enables efficient navigation between files with an enhanced buffer management system.
- `catppuccin.lua`: A soothing color scheme that’s easy on the eyes and improves code readability.
- `gitsigns.lua`: Integrates Git into the editor, showing file changes in the gutter for real-time version control.
- `indent-blankline.lua`: Displays visual indent lines to maintain code structure and readability.
- `lsp-config.lua`: Sets up Language Server Protocol configurations for powerful code intelligence.
- `lua-line.lua`: Provides a fully customizable status line with essential information at a glance.
- `neotree.lua`: A tree-like file explorer for quick project navigation.
- `none-ls.lua`: Configures non-language server utilities to enhance NeoVim's capabilities without a dedicated LSP.
- `nvim-dap.lua`: Integrates Debug Adapter Protocol for in-editor debugging.
- `telescope.lua`: A fuzzy finder that simplifies file opening and symbol searching in your codebase.
- `treesitter.lua`: Employs advanced parsing for superior syntax highlighting and code analysis.
- `which-key.lua`: Offers a handy popup to display possible keybindings based on current input.

### General Configurations

- `init.lua`: The heart of the NeoVim configuration that orchestrates module loading.
- `plugins.lua`: Outlines the plugins managed by the package manager, ensuring a modular setup.
- `vim-options.lua`: Adjusts global settings to fine-tune NeoVim's behavior according to personal preferences.


## Language Server Protocol (LSP)

LSP is a cornerstone of this configuration, offering powerful features for a variety of programming languages:

- `lsp-zero`: A streamlined setup for initializing and configuring LSP-related features with minimal overhead.
- `mason-lspconfig`: Manages LSP servers, ensuring they're automatically installed and updated. It interfaces seamlessly with `lspconfig`, which provides the foundational settings for each LSP.
- `lspconfig`: Connects NeoVim with language servers, enabling features like auto-completion, go-to-definition, and real-time diagnostics.

The LSP setup is fine-tuned with key mappings and settings to provide an intuitive interface for accessing LSP functionalities, keeping the workflow as distraction-free as possible.

## Package Management with Lazy.nvim

- `lazy.nvim`: A next-generation package manager designed for lazy loading of plugins, reducing startup time and optimizing resource usage.
- It is configured to load plugins only when required, based on the file type or command being used, ensuring a fast and responsive NeoVim environment.

This configuration prioritizes a smooth user experience, with features like automatic code formatting upon saving, deferred plugin loading, and additional performance tweaks. It is equipped to handle development in languages such as JavaScript, TypeScript, Go, and others, providing a robust toolkit for modern development needs.

