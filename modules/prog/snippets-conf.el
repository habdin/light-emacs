;;; snippets-conf.el -*- lexical-binding: t; -*-

(use-package yasnippet
  :straight t
  :defer t
  :config
  (add-hook 'prog-mode #'yas-reload-all)
  ;;(add-hook 'after-init-hook #'yas-reload-all)
  :init
  (add-hook 'prog-mode #'yas-minor-mode)
  )

(use-package yasnippet-snippets
  :straight t
  :after yasnippet)
