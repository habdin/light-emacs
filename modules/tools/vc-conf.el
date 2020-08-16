;; vc-conf.el -*- lexical-binding: t; -*-

(use-package magit
  :straight t)

(use-package magit-gh-pulls
  :straight t
  :defer t
  :config
  (add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls))

(use-package magit-gitflow
  :straight t)

(use-package magit-imerge
  :straight t)

(use-package magithub
  :straight t)
