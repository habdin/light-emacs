;;; 07-ui-conf.el -*- lexical-binding: t; -*-

;;; Appearance tweaks

;; Frame title format
(setq frame-title-format
      '("" invocation-name " - "
	(:eval (if (buffer-file-name)
		   (abbreviate-file-name (buffer-file-name))
		 "%b"))))

;; Font setting
(add-hook 'after-make-frame-functions (lambda (frame) (set-fontset-font t '(#Xe100 . #Xe16f) "Fira Code Symbol")))
(add-to-list 'default-frame-alist
	     '(font . "Fira Code-11"))
;; (add-hook 'after-init-hook 'my-set-fira-code-ligatures)

;; Theme settings
(lmx-load-theme 'doom-material)

;; Hightlight current line
(global-hl-line-mode)

;; Always indicate empty lines within files and buffers
(setq default-indicate-empty-lines t)
(when (fboundp 'fringe-mode)
  (set-fringe-mode 4))
