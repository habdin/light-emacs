;;; snippets-conf.el -*- lexical-binding: t; -*-

(use-package yasnippet
  :straight t
  :defer t
  :init
  (yas-global-mode t)
  )

(use-package yasnippet-snippets
  :straight t
  :after yasnippet)
