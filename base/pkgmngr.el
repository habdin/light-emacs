;;; pkgmngr.el -*- lexical-binding: t; -*-

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

;; Configure Package

(use-package package
  :defer t
  :config
  (setq package-enable-at-startup nil)
  (add-to-list 'package-archives
	       '("gnu" . "https://elpa.gnu.org/packages/") t)
  (add-to-list 'package-archives
	       '("melpa" . "http://melpa.org/packages/") t)
  (add-to-list 'package-archives
	       '("org" . "http://orgmode.org/elpa/") t))
