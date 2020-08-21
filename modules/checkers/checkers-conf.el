;;; checkers-conf -*- lexical-binding: t; -*-

(use-package flycheck
  :straight t
  :config
  (add-hook 'prog-mode-hook #'flycheck-mode))

(use-package flyspell
  :straight t
  :config
  (add-hook 'text-mode-hook #'flyspell-mode))
