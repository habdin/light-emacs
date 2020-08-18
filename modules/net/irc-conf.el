;;; irc-conf.el -*- lexical-binding: t; -*-

(use-package erc
  :defer t
  :config
  ;; Set user information
  (setq erc-nick "Lordveda")
  (setq erc-user-full-name "Hassan Abdin")
  ;; Load user password file
  (load (concat user-emacs-directory "modules/net/erc-auth.el")))

;; Add `erc-colorize' extension
(use-package erc-colorize
  :straight t
  :defer t
  :config
  (erc-colorize-mode 1))
