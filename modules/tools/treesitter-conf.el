;; treesitter-conf.el -*- lexical-binding: t; -*-

(use-package tree-sitter
  :straight t
  :hook (prog-mode . tree-sitter-mode)
  :config
  (add-hook 'tree-sitter-mode-hook #'tree-sitter-hl-mode)
  )

(use-package tree-sitter-langs
  :straight t
  :after tree-sitter
  )

(use-package tree-sitter-indent
  :straight t
  :after tree-sitter
  )
