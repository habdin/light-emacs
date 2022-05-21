;; lsp-conf.el -*- lexical-binding: t; -*-

(use-package lsp-mode
  :straight t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook
  (prog-mode . lsp)
  (lsp-mode . lsp-enable-which-key-integration)
  :commands lsp)

(use-package lsp-ui
  :straight t
  :after lsp-mode
  :commands lsp-ui-mode)

(use-package lsp-ivy
  :straight t
  :after lsp-mode
  :commands lsp-ivy-workspace-symbol)

(use-package lsp-treemacs
  :straight t
  :after lsp-mode
  :config (lsp-treemacs-sync-mode 1)
  :commands lsp-treemacs-errors-list)

(use-package lsp-pyright
  :straight t
  :hook (python-mode . (lambda () (require 'lsp-pyright)
			 (lsp))))
