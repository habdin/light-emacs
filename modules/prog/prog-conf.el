;;; prog-conf.el -*- lexical-binding: t; -*-

;; (dolist (attach '(my-set-fira-code-ligatures display-line-numbers-mode))
;;  (add-hook 'prog-mode-hook attach))

(if (version<= "26.1" emacs-version)
    (add-hook 'prog-mode-hook #'linum-mode)
  (add-hook 'prog-mode-hook #'display-line-numbers-mode))
