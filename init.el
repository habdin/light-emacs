;;; init.el -*- lexical-binding: t; -*-

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
(load (concat user-emacs-directory "modules/tools/vc-conf") nil 'nomessage)
(load (concat user-emacs-directory "modules/net/irc-conf") nil 'nomessage)
