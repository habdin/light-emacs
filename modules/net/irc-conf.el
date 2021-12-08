;;; irc-conf.el -*- lexical-binding: t; -*-

(use-package erc
  :defer t
  :config
  ;; Set user information
  (setq erc-nick "Lordveda")
  (setq erc-user-full-name "Hassan Abdin")
  ;; Load user password file
  (load (concat user-emacs-directory "modules/net/irc-auth.el")))

;; Add `erc-colorize' extension
(use-package erc-colorize
  :straight t
  :defer t
  :config
  (erc-colorize-mode 1))

(use-package erc-sasl
  :defer t
  :straight (erc-sasl :type git :host github :repo "suhailshergill/erc-sasl")
  :config
  (add-to-list 'erc-sasl-server-regexp-list ".*"))

(use-package rcirc
  :defer t
  :config
  (add-to-list 'rcirc-server-alist
	       '("irc.freenode.net"
		 :channels ("#emacs")))
  (setq rcirc-default-nick "Lordveda"
	rcirc-default-full-name "Hassan Abdin")
  (load (concat user-emacs-directory "modules/net/irc-auth.el"))
  )
