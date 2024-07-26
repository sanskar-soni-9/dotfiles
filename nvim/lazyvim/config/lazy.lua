local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		-- add LazyVim and import its plugins
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },

		-- Extras
		-- Coding
		-- { import = "lazyvim.plugins.extras.coding.codeium" },
		{ import = "lazyvim.plugins.extras.coding.copilot-chat" },
		{ import = "lazyvim.plugins.extras.coding.copilot" },
		{ import = "lazyvim.plugins.extras.coding.luasnip" },
		-- { import = "lazyvim.plugins.extras.coding.mini-ai" }, -- Present in core - no longer in extras
		-- { import = "lazyvim.plugins.extras.coding.mini-comment" }, -- Present in core
		{ import = "lazyvim.plugins.extras.coding.mini-surround" },
		{ import = "lazyvim.plugins.extras.coding.neogen" },
		--{ import = "lazyvim.plugins.extras.coding.yanky" },

		-- DAP
		{ import = "lazyvim.plugins.extras.dap.core" },
		-- { import = "lazyvim.plugins.extras.dap.nlua" },

		-- Editor
		{ import = "lazyvim.plugins.extras.editor.aerial" },
		-- { import = "lazyvim.plugins.extras.editor.dial" },
		-- { import = "lazyvim.plugins.extras.editor.harpoon2" },
		{ import = "lazyvim.plugins.extras.editor.illuminate" },
		-- { import = "lazyvim.plugins.extras.editor.inc-rename" },
		-- { import = "lazyvim.plugins.extras.editor.leap" },
		-- { import = "lazyvim.plugins.extras.editor.mini-diff" },
		{ import = "lazyvim.plugins.extras.editor.mini-files" }, -- Best plugin EVER...
		-- { import = "lazyvim.plugins.extras.editor.mini-move" },
		-- { import = "lazyvim.plugins.extras.editor.navic" },
		-- { import = "lazyvim.plugins.extras.editor.outline" },
		-- { import = "lazyvim.plugins.extras.editor.refactoring" },
		-- { import = "lazyvim.plugins.extras.editor.trouble-v3" }, -- Present in core

		-- Formatting
		{ import = "lazyvim.plugins.extras.formatting.black" },
		{ import = "lazyvim.plugins.extras.formatting.prettier" },

		-- Lang
		-- { import = "lazyvim.plugins.extras.lang.angular" },
		-- { import = "lazyvim.plugins.extras.lang.ansible" },
		-- { import = "lazyvim.plugins.extras.lang.astro" },
		{ import = "lazyvim.plugins.extras.lang.clangd" },
		-- { import = "lazyvim.plugins.extras.lang.clojure" },
		{ import = "lazyvim.plugins.extras.lang.cmake" },
		{ import = "lazyvim.plugins.extras.lang.docker" },
		-- { import = "lazyvim.plugins.extras.lang.elixir" },
		-- { import = "lazyvim.plugins.extras.lang.elm" },
		{ import = "lazyvim.plugins.extras.lang.git" },
		-- { import = "lazyvim.plugins.extras.lang.gleam" },
		-- { import = "lazyvim.plugins.extras.lang.go" },
		-- { import = "lazyvim.plugins.extras.lang.haskell" },
		-- { import = "lazyvim.plugins.extras.lang.helm" },
		-- { import = "lazyvim.plugins.extras.lang.java" },
		{ import = "lazyvim.plugins.extras.lang.json" },
		-- { import = "lazyvim.plugins.extras.lang.kotlin" },
		{ import = "lazyvim.plugins.extras.lang.markdown" },
		-- { import = "lazyvim.plugins.extras.lang.nix" },
		-- { import = "lazyvim.plugins.extras.lang.nushell" },
		-- { import = "lazyvim.plugins.extras.lang.omnisharp" },
		{ import = "lazyvim.plugins.extras.lang.php" },
		-- { import = "lazyvim.plugins.extras.lang.python-semshi" },
		{ import = "lazyvim.plugins.extras.lang.python" },
		-- { import = "lazyvim.plugins.extras.lang.r" },
		-- { import = "lazyvim.plugins.extras.lang.ruby" },
		{ import = "lazyvim.plugins.extras.lang.rust" },
		-- { import = "lazyvim.plugins.extras.lang.scala" },
		{ import = "lazyvim.plugins.extras.lang.sql" },
		-- { import = "lazyvim.plugins.extras.lang.svelte" },
		{ import = "lazyvim.plugins.extras.lang.tailwind" },
		-- { import = "lazyvim.plugins.extras.lang.terraform" },
		-- { import = "lazyvim.plugins.extras.lang.tex" },
		-- { import = "lazyvim.plugins.extras.lang.thrift" },
		{ import = "lazyvim.plugins.extras.lang.toml" },
		{ import = "lazyvim.plugins.extras.lang.typescript" },
		{ import = "lazyvim.plugins.extras.lang.vue" },
		{ import = "lazyvim.plugins.extras.lang.yaml" },

		-- Linting
		{ import = "lazyvim.plugins.extras.linting.eslint" },

		-- LSP
		{ import = "lazyvim.plugins.extras.lsp.neoconf" },
		-- { import = "lazyvim.plugins.extras.lsp.none-ls" },

		-- Test
		{ import = "lazyvim.plugins.extras.test.core" },

		-- UI
		-- { import = "lazyvim.plugins.extras.ui.alpha" },
		-- { import = "lazyvim.plugins.extras.ui.edgy" },
		-- { import = "lazyvim.plugins.extras.ui.mini-animate" },
		{ import = "lazyvim.plugins.extras.ui.mini-indentscope" },
		-- { import = "lazyvim.plugins.extras.ui.mini-starter" },
		{ import = "lazyvim.plugins.extras.ui.treesitter-context" },
		-- { import = "lazyvim.plugins.extras.ui.treesitter-rewrite" }, -- Not Ready Yet

		-- Util
		{ import = "lazyvim.plugins.extras.util.dot" },
		-- { import = "lazyvim.plugins.extras.util.gitui" }, -- But LazyGit is the Best
		{ import = "lazyvim.plugins.extras.util.mini-hipatterns" },
		-- { import = "lazyvim.plugins.extras.util.octo" },
		-- { import = "lazyvim.plugins.extras.util.project" },
		{ import = "lazyvim.plugins.extras.util.startuptime" },

		-- import/override with your plugins
		{ import = "plugins" },
	},
	defaults = {
		-- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
		-- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
		lazy = false,
		-- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
		-- have outdated releases, which may break your Neovim install.
		version = false, -- always use the latest git commit
		-- version = "*", -- try installing the latest stable version for plugins that support semver
	},
	install = { colorscheme = { "catppuccin" } },
	checker = { enabled = true }, -- automatically check for plugin updates
	performance = {
		rtp = {
			-- disable some rtp plugins
			disabled_plugins = {
				"gzip",
				-- "matchit",
				-- "matchparen",
				-- "netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
