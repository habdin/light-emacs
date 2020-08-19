;;; 02-pkgmngr.el -*- lexical-binding: t; -*-

;; Initialize Straight

(setq straight-base-dir (concat user-emacs-directory ".local")
      straight-repository-branch "develop"
      straight-cache-autoloads nil
      straight-check-for-modifications nil
      straight-enable-package-integration nil
      straight-vc-git-default-clone-depth 1
      autoload-compute-prefixes nil
      straight-use-package-by-default t)


(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name ".local/straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
	(url-retrieve-synchronously
	 "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
	 'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Install use-package

(straight-use-package 'use-package)

;; Install Paradox for browsing packages
(use-package paradox
  :defer t
  :straight t
  :config
  (setq paradox-github-token (concat user-emacs-directory "paradox-token"))
  (paradox-enable))

;; Install diminish and delight for use with use-package when needed.
(use-package diminish
  :straight t
  :defer t)

(use-package delight
  :straight t
  :defer t)

;; Configure Package

(use-package package
  :defer t
  :config
  (setq package-enable-at-startup nil)
  (setq package-user-dir (concat user-emacs-directory ".local/elpa")
	package-gnupghome-dir (expand-file-name "gpg" package-user-dir))
  (add-to-list 'package-archives
	       '("gnu" . "https://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives
	       '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list 'package-archives
	       '("org" . "http://orgmode.org/elpa/") t))
