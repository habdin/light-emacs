;;; prog-conf.el -*- lexical-binding: t; -*-

(dolist (attach '(my-set-fira-code-ligatures display-line-numbers-mode))
  (add-hook 'prog-mode-hook attach))
