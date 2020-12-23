;;; prog-conf.el -*- lexical-binding: t; -*-

;; (dolist (attach '(my-set-fira-code-ligatures display-line-numbers-mode))
;;  (add-hook 'prog-mode-hook attach))

(setq display-line-numbers-type 'relative)
(add-hook 'prog-mode-hook
	  (if (fboundp 'display-line-numbers-mode)
	      #'display-line-numbers-mode
	  #'linum-mode))
