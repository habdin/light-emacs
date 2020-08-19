;;; 10-prjmngr-conf.el -*- lexical-binding: t; -*-

(use-package projectile
  :straight t
  :config
  (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
  (setq projectile-project-search-path '("~/Projects/"))
  (setq projectile-completion-system 'ivy)
  (setq projectile-mode-line-prefix " Project ")
  (projectile-mode +1))
