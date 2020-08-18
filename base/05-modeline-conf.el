;;; 05-modeline-conf.el -*- lexical-binding: t; -*-

(use-package doom-modeline
	     :straight t
	     :init (doom-modeline-mode 1)
	     (setq doom-modeline-height 16)
	     (column-number-mode t)
	     :config
	     (if (daemonp)
		 (add-hook 'after-make-frame-functions #'fix-doom-modeline)
	       (doom-modeline-mode 1)))
