;;;  06-themes-conf.el -*- lexical-binding: t; -*-

(use-package doom-themes
  :straight t)

(use-package all-the-icons
  :straight t
  :defer t)

(use-package all-the-icons-dired
  :straight t
  :after all-the-icons
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))
