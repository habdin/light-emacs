;;; 09-bufmngr-conf.el -*- lexical-binding: t; -*-

(use-package ace-window
  :straight t
  :bind
  ("M-o" . ace-window))

(use-package ibuffer
  :bind
  ("C-x C-b" . 'ibuffer))
