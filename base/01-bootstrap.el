;;; 01-bootstrap.el -*- lexical-binding: t; -*-

;; Disable garbagge collection at Emacs bootstrap
(setq gc-cons-threshold most-positive-fixnum)

;; Defer listing of installed local emacs packages till Emacs starts.
(setq package-enable-at-startup nil)
(advice-add #'package--ensure-init-file :override #'ignore)

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

;; Hide Emacs Startup screen

(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(setq initial-major-mode #'fundamental-mode)
(setq frame-inhibit-implied-resize t)
