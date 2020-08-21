;;; snippets-conf.el -*- lexical-binding: t; -*-

(use-package yasnippet
  :straight t
  :defer t
  :config
  (add-hook 'yas-minor-mode-hook #'yas-reload-all)
  (add-hook 'prog-mode-hook #'yas-minor-mode)
  (add-hook 'text-mode-hook #'yas-minor-mode)
  )

(use-package yasnippet-snippets
  :straight t
  :after yasnippet)
