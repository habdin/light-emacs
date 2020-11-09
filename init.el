;;; init.el -*- lexical-binding: t; -*-

;; LMX Base config files section

(load (concat user-emacs-directory "base/01-bootstrap.el") nil 'nomessage)
(load (concat user-emacs-directory "base/02-pkgmngr.el") nil 'nomessage)
(load (concat user-emacs-directory "base/03-personal-info.el") nil 'nomessage)
(load (concat user-emacs-directory "base/04-lmx-lisp.el") nil 'nomessage)
(load (concat user-emacs-directory "base/05-modeline-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "base/06-themes-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "base/07-ui-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "base/08-lmx-base-tweaks.el") nil 'nomessage)
(load (concat user-emacs-directory "base/09-bufmngr-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "base/10-prjmngr-conf.el") nil 'nomessage)


;; LMX Mouules config files section

(load (concat user-emacs-directory "modules/tools/vc-conf") nil 'nomessage)
(load (concat user-emacs-directory "modules/file-manager/treemacs.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/completion/complmngr-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/prog/snippets-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/checkers/checkers-conf.el") nil 'nomeesage)
(load (concat user-emacs-directory "modules/prog/prog-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/lang/webdev-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/lang/python-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/lang/php-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/lang/js-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/lang/csharp-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/tools/org-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/tools/pdf-conf.el") nil 'nomessage)
(load (concat user-emacs-directory "modules/net/irc-conf.el") nil 'nomessage)
