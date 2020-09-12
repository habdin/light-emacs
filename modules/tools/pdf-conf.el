;; pdf-conf.el -*- lexical-binding: t; -*-

(use-package pdf-tools
  :straight t
  :defer t
  :magic ("%PDF" . pdf-occur-global-minor-mode)
  :config
  (pdf-tools-install))
